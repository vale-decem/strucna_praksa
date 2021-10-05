--kreira particije ako ne postoje
--poziva je triger trg_insert_trkaci()
create or replace function trkaci_partition(IN naziv varchar, IN tim varchar)
returns void 
language plpgsql
as
$body$
declare
	table_name varchar(50);
begin
	table_name := naziv || '_' || tim;
	execute 'create table if not exists ' || table_name || '(like ' || naziv 
		|| ' including all) inherits (' || naziv || ')';
end	
$body$




alter table trkaci rename to trkaci_uae;

create table trkaci (like trkaci_uae including all);

alter table trkaci_uae inherit trkaci;	

--okida se pozivom insert into naredbe i ubacuje podatke u odgovarajucu particiju
create or replace function trg_insert_trkaci()
returns trigger 
language plpgsql
as
$body$
declare
	tim trkaci.naziv_tima%type := null;
begin
	perform naziv_tima into tim
	from trkaci;
	
	execute 'insert into trkaci_' || new.naziv_tima || ' values ( $1.* )' using new;
	return null;
	
exception
when undefined_table then
	perform pg_advisory_xact_lock('trkaci'::regclass::oid::integer);
	perform trkaci_partition('trkaci', new.naziv_tima);
	
	execute 'insert into trkaci_' || new.naziv_tima || ' values ( $1.* )' using new;
	return null;
end	
$body$

--petlja koja prolazi kroz punog roditelja i rasporedjuje postojece podatke po odgovarajucim particijama
--poziva se naredbom select LoopForExisting();
CREATE OR REPLACE FUNCTION LoopForExisting() 
  RETURNS VOID 
AS
$$
DECLARE 
   t_row trkaci%rowtype;
BEGIN 
	FOR t_row in SELECT * FROM trkaci LOOP
		IF t_row.naziv_tima != 'UAE' and t_row.id_trkaca != 77 and t_row.id_trkaca != 78 then
			perform trkaci_partition('trkaci', t_row.naziv_tima);
			execute 'insert into trkaci_' || t_row.naziv_tima || ' values ( $1.* )' using t_row;
		END IF;	
	END LOOP;	
END;
$$ 
LANGUAGE plpgsql;

create trigger row_trg_insert_trkaci before insert
	on trkaci for each row 
	execute procedure trg_insert_trkaci();
