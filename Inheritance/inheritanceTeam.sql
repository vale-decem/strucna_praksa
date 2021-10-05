CREATE SEQUENCE seq_id_trkac INCREMENT BY 1 MINVALUE 1 
MAXVALUE 99999 START WITH 1 NO CYCLE;

CREATE SEQUENCE seq_id_etape INCREMENT BY 1 MINVALUE 1 
MAXVALUE 99999 START WITH 1 NO CYCLE;

CREATE SEQUENCE seq_id_sponzor INCREMENT BY 1 MINVALUE 1 
MAXVALUE 99999 START WITH 1 NO CYCLE;


CREATE TABLE sponzor (
	id INT NOT NULL PRIMARY KEY,
	naziv VARCHAR(50) NOT NULL,
	drzava VARCHAR(50) NOT NULL,
	slogan VARCHAR(50)
);

CREATE TABLE trkaci(
	id_trkaca INT PRIMARY KEY,
	ime VARCHAR(20) NOT NULL,
	prezime VARCHAR(20) NOT NULL,
	naziv_tima VARCHAR(50) NOT NULL,
	godine INT NOT NULL,
	visina INT NOT NULL,
	tezina FLOAT NOT NULL,
	fk_sponzor INT NOT NULL,
	FOREIGN KEY (fk_sponzor) REFERENCES sponzor(id) ON DELETE CASCADE
);


CREATE TABLE etape (
	id_etape INT NOT NULL PRIMARY KEY,
	duzina DECIMAL(5,2) NOT NULL,
	trajanje DECIMAL(3,2) NOT NULL,
	startno_mesto VARCHAR(13) NOT NULL,
	ciljno_mesto VARCHAR(13) NOT NULL,
	fk_trkac_pobednik INT NOT NULL,
	FOREIGN KEY (fk_trkac_pobednik) REFERENCES trkaci(id_trkaca) ON DELETE CASCADE
);


insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Photojam', 'Cezch Republic', 'Hatity');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Vipe', 'Bulgaria', 'Matsoft');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Mydeo', 'Germany', 'Kanlam');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Mynte', 'Great Britain', 'Latlux');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Skajo', 'France', 'Fintone');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Cogibox', 'Switzerland', 'Opela');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Innotype', 'Norway', 'Trippledex');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Lajo', 'Romania', 'Fintone');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Talane', 'Italy', 'Otcom');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Abata', 'Greece', 'Viva');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Jayo', 'Turkey', 'Cardguard');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Photobug', 'Sweeden', 'Overhold');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Wikibox', 'Russia', 'Duobam');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Yadel', 'Ireland', 'Job');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Yodo', 'Spain', 'Opela');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Latz', 'Columbia', 'Biodex');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Dynabox', 'Portugal', 'Kanlam');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Skilith', 'Great Britain', 'Voyatouch');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Cogibox', 'Australia', 'Flexidy');
insert into sponzor (id, naziv, drzava, slogan) values (nextval('seq_id_sponzor'), 'Mycat', 'France', 'Flexidy');



insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Care', 'Feely', 'Jumbo Visma', 38, 162, 83.0, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Trstram', 'Foulger', 'Jumbo Visma', 30, 167, 54.04, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Waiter', 'Houston', 'Jumbo Visma', 21, 186, 86.66, 12);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'York', 'Petrasch', 'Jumbo Visma', 39, 186, 72.29, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Kristoffer', 'Jaggers', 'Jumbo Visma', 44, 156, 82.98, 12);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Worth', 'Summerhayes', 'Jumbo Visma', 45, 155, 53.56, 3);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Raymond', 'Peever', 'Jumbo Visma', 26, 177, 73.57, 20);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Boycie', 'Faulconer', 'Jumbo Visma', 28, 195, 67.95, 17);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Odo', 'Shemilt', 'Lotto Soudal', 30, 171, 77.19, 7);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Ingmar', 'Munby', 'Lotto Soudal', 41, 210, 90.48, 14);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Kenyon', 'Paulou', 'Lotto Soudal', 22, 189, 91.07, 17);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Moises', 'Hadleigh', 'Lotto Soudal', 29, 168, 79.0, 3);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Shaun', 'McGarva', 'Lotto Soudal', 24, 200, 97.68, 12);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Ray', 'Igglesden', 'Lotto Soudal', 45, 200, 62.62, 5);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Lauritz', 'Ackeroyd', 'Lotto Soudal', 37, 191, 54.62, 7);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Gareth', 'McIntosh', 'Lotto Soudal', 29, 198, 53.94, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Torrence', 'Gladbeck', 'Movistar', 38, 185, 57.31, 8);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Jay', 'Monkman', 'Movistar', 23, 181, 73.54, 12);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Palm', 'Manhare', 'Movistar', 44, 189, 72.16, 6);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Mathew', 'Mathie', 'Movistar', 34, 200, 95.98, 17);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Chandler', 'Marney', 'Movistar', 26, 197, 99.13, 10);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Tom', 'Kiendl', 'Movistar', 23, 187, 93.18, 8);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Conway', 'Goodhand', 'Movistar', 36, 153, 73.32, 9);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Gayler', 'Bartolomucci', 'Movistar', 18, 200, 69.36, 3);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Georgy', 'Richel', 'UAE', 42, 180, 53.51, 19);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Vanya', 'Woodison', 'UAE', 41, 175, 90.41, 2);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Bernard', 'Ramalhete', 'UAE', 42, 189, 69.67, 14);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Anton', 'Collier', 'UAE', 38, 202, 90.07, 17);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Mathian', 'Ouldred', 'UAE', 28, 183, 67.1, 8);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Sal', 'Scallon', 'UAE', 22, 172, 51.68, 17);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Gregoor', 'Kohrt', 'UAE', 40, 191, 90.24, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Hershel', 'Deavin', 'UAE', 41, 175, 56.73, 19);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Niven', 'Jirka', 'Bora Hansgrohe', 33, 152, 85.75, 6);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Eugen', 'Cradduck', 'Bora Hansgrohe', 37, 204, 97.12, 15);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Jarvis', 'Casali', 'Bora Hansgrohe', 20, 174, 85.15, 2);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Christoforo', 'Entres', 'Bora Hansgrohe', 28, 193, 67.22, 10);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Gunther', 'Mangeon', 'Bora Hansgrohe', 41, 155, 61.9, 5);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Benjy', 'Flood', 'Bora Hansgrohe', 40, 152, 87.65, 19);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Sherm', 'Mont', 'Bora Hansgrohe', 21, 190, 87.03, 6);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Pedro', 'Chrestien', 'Bora Hansgrohe', 39, 194, 60.2, 5);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Humberto', 'Jenking', 'Cofidis', 39, 175, 82.03, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Dale', 'Culshaw', 'Cofidis', 36, 190, 78.68, 6);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Fabio', 'Torvey', 'Cofidis', 21, 157, 68.06, 7);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Hadleigh', 'Caizley', 'Cofidis', 25, 157, 87.08, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Eziechiele', 'Baguley', 'Cofidis', 26, 195, 94.17, 18);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Chadwick', 'Burtonwood', 'Cofidis', 40, 203, 85.22, 16);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Neils', 'Hassan', 'Cofidis', 36, 193, 63.74, 7);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Hamil', 'McKerton', 'Cofidis', 40, 198, 77.14, 13);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Barry', 'Stowte', 'Ineos Grenadiers', 19, 178, 84.61, 20);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Saunders', 'Brice', 'Ineos Grenadiers', 38, 180, 66.62, 20);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Salmon', 'Le Grice', 'Ineos Grenadiers', 32, 170, 58.16, 11);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Prentiss', 'Cartmel', 'Ineos Grenadiers', 18, 200, 65.69, 10);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Cass', 'Aven', 'Ineos Grenadiers', 27, 201, 57.75, 8);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Tris', 'Vaen', 'Ineos Grenadiers', 36, 184, 66.72, 11);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Paten', 'Lead', 'Ineos Grenadiers', 29, 157, 54.2, 15);
insert into trkaci (id_trkaca, ime, prezime, naziv_tima, godine, visina, tezina, fk_sponzor) values (nextval('seq_id_trkac'), 'Gianni', 'Buckett', 'Ineos Grenadiers', 27, 207, 60.58, 11);


update trkaci
  set naziv_tima = replace(naziv_tima, ' ', '_');

insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 333, 5.89, 'Paris', 'Strasbourg', 43);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 225, 4.88, 'Bordeaux', 'Paris', 50);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 125, 3.85, 'Le Havre', 'Nantes', 50);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 284, 3.37, 'Saint-Etienne', 'Paris', 29);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 247, 2.08, 'Reims', 'Saint-Etienne', 38);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 345, 4.47, 'Montpellier', 'Strasbourg', 2);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 255, 2.66, 'Rennes', 'Toulouse', 14);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 262, 4.16, 'Toulouse', 'Nantes', 25);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 230, 5.2, 'Le Mans', 'Reims', 36);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 144, 5.93, 'Grenoble', 'Strasbourg', 53);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 349, 3.57, 'Grenoble', 'Nice', 9);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 188, 5.47, 'Paris', 'Paris', 38);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 211, 3.26, 'Bordeaux', 'Saint-Etienne', 15);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 274, 4.76, 'Saint-Etienne', 'Paris', 34);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 260, 2.1, 'Paris', 'Toulouse', 40);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 195, 5.83, 'Rennes', 'Dijon', 56);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 161, 2.44, 'Strasbourg', 'Angers', 8);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 311, 2.24, 'Strasbourg', 'Bordeaux', 56);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 172, 5.06, 'Toulon', 'Toulon', 18);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 138, 4.1, 'Nimes', 'Lille', 29);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (nextval('seq_id_etape'), 300, 2.74, 'Dijon', 'Nice', 43);