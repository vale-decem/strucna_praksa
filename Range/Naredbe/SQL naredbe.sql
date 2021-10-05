CREATE TABLE sponzor (
	id INT NOT NULL PRIMARY KEY,
	naziv VARCHAR(50) NOT NULL,
	drzava VARCHAR(50) NOT NULL,
	slogan VARCHAR(50)
);

CREATE TABLE trkaci(
	id_trkaca INT PRIMARY KEY,
	ime VARCHAR(10) NOT NULL,
	prezime VARCHAR(10) NOT NULL,
	godine INT NOT NULL,
	visina INT NOT NULL,
	tezina FLOAT NOT NULL,
	fk_sponzor INT NOT NULL,
	FOREIGN KEY (fk_sponzor) REFERENCES sponzor(id)
) PARTITION BY RANGE (id_trkaca);


CREATE TABLE teamIneosGrenadiers PARTITION OF trkaci FOR VALUES FROM (1) TO (9);
CREATE TABLE teamJumboVisma PARTITION OF trkaci FOR VALUES FROM (9) TO (17);
CREATE TABLE teamUAE PARTITION OF trkaci FOR VALUES FROM (17) TO (25);
CREATE TABLE teamBoraHansgrohe PARTITION OF trkaci FOR VALUES FROM (25) TO (33);
CREATE TABLE teamLottoSoudal PARTITION OF trkaci FOR VALUES FROM (33) TO (41);
CREATE TABLE teamMovistar PARTITION OF trkaci FOR VALUES FROM (41) TO (49);
CREATE TABLE teamCofidis PARTITION OF trkaci FOR VALUES FROM (49) TO (57);


CREATE TABLE etape (
	id_etape INT NOT NULL PRIMARY KEY,
	duzina DECIMAL(5,2) NOT NULL,
	trajanje DECIMAL(3,2) NOT NULL,
	startno_mesto VARCHAR(13) NOT NULL,
	ciljno_mesto VARCHAR(13) NOT NULL,
	fk_trkac_pobednik INT NOT NULL,
	FOREIGN KEY (fk_trkac) REFERENCES trkaci(id_trkaca)
);


insert into sponzor (id, naziv, drzava, slogan) values (1, 'Photojam', 'Cezch Republic', 'Hatity');
insert into sponzor (id, naziv, drzava, slogan) values (2, 'Vipe', 'Bulgaria', 'Matsoft');
insert into sponzor (id, naziv, drzava, slogan) values (3, 'Mydeo', 'Germany', 'Kanlam');
insert into sponzor (id, naziv, drzava, slogan) values (4, 'Mynte', 'Great Britain', 'Latlux');
insert into sponzor (id, naziv, drzava, slogan) values (5, 'Skajo', 'France', 'Fintone');
insert into sponzor (id, naziv, drzava, slogan) values (6, 'Cogibox', 'Switzerland', 'Opela');
insert into sponzor (id, naziv, drzava, slogan) values (7, 'Innotype', 'Norway', 'Trippledex');
insert into sponzor (id, naziv, drzava, slogan) values (8, 'Lajo', 'Romania', 'Fintone');
insert into sponzor (id, naziv, drzava, slogan) values (9, 'Talane', 'Italy', 'Otcom');
insert into sponzor (id, naziv, drzava, slogan) values (10, 'Abata', 'Greece', 'Viva');
insert into sponzor (id, naziv, drzava, slogan) values (11, 'Jayo', 'Turkey', 'Cardguard');
insert into sponzor (id, naziv, drzava, slogan) values (12, 'Photobug', 'Sweeden', 'Overhold');
insert into sponzor (id, naziv, drzava, slogan) values (13, 'Wikibox', 'Russia', 'Duobam');
insert into sponzor (id, naziv, drzava, slogan) values (14, 'Yadel', 'Ireland', 'Job');
insert into sponzor (id, naziv, drzava, slogan) values (15, 'Yodo', 'Spain', 'Opela');
insert into sponzor (id, naziv, drzava, slogan) values (16, 'Latz', 'Columbia', 'Biodex');
insert into sponzor (id, naziv, drzava, slogan) values (17, 'Dynabox', 'Portugal', 'Kanlam');
insert into sponzor (id, naziv, drzava, slogan) values (18, 'Skilith', 'Great Britain', 'Voyatouch');
insert into sponzor (id, naziv, drzava, slogan) values (19, 'Cogibox', 'Australia', 'Flexidy');
insert into sponzor (id, naziv, drzava, slogan) values (20, 'Mycat', 'France', 'Flexidy');


insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (1, 'Boycie', 'Faulconer', 28, 195, 67.95, 17);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (2, 'Odo', 'Shemilt', 30, 171, 77.19, 7);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (3, 'Ingmar', 'Munby', 41, 210, 90.48, 14);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (4, 'Kenyon', 'Paulou', 22, 189, 91.07, 17);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (5, 'Moises', 'Hadleigh', 29, 168, 79.0, 3);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (6, 'Shaun', 'McGarva', 24, 200, 97.68, 12);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (7, 'Ray', 'Igglesden', 45, 200, 62.62, 5);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (8, 'Lauritz', 'Ackeroyd', 37, 191, 54.62, 7);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (9, 'Gareth', 'McIntosh', 29, 198, 53.94, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (10, 'Torrence', 'Gladbeck', 38, 185, 57.31, 8);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (11, 'Jay', 'Monkman', 23, 181, 73.54, 12);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (12, 'Palm', 'Manhare', 44, 189, 72.16, 6);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (13, 'Mathew', 'Mathie', 34, 200, 95.98, 17);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (14, 'Chandler', 'Marney', 26, 197, 99.13, 10);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (15, 'Tom', 'Kiendl', 23, 187, 93.18, 8);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (16, 'Conway', 'Goodhand', 36, 153, 73.32, 9);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (17, 'Gayler', 'Bartolomucci', 18, 200, 69.36, 3);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (18, 'Georgy', 'Richel', 42, 180, 53.51, 19);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (19, 'Vanya', 'Woodison', 41, 175, 90.41, 2);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (20, 'Bernard', 'Ramalhete', 42, 189, 69.67, 14);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (21, 'Anton', 'Collier', 38, 202, 90.07, 17);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (22, 'Mathian', 'Ouldred', 28, 183, 67.1, 8);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (23, 'Sal', 'Scallon', 22, 172, 51.68, 17);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (24, 'Gregoor', 'Kohrt', 40, 191, 90.24, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (25, 'Hershel', 'Deavin', 41, 175, 56.73, 19);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (26, 'Niven', 'Jirka', 33, 152, 85.75, 6);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (27, 'Eugen', 'Cradduck', 37, 204, 97.12, 15);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (28, 'Jarvis', 'Casali', 20, 174, 85.15, 2);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (29, 'Christoforo', 'Entres', 28, 193, 67.22, 10);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (30, 'Gunther', 'Mangeon', 41, 155, 61.9, 5);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (31, 'Benjy', 'Flood', 40, 152, 87.65, 19);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (32, 'Sherm', 'Mont', 21, 190, 87.03, 6);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (33, 'Pedro', 'Chrestien', 39, 194, 60.2, 5);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (34, 'Humberto', 'Jenking', 39, 175, 82.03, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (35, 'Dale', 'Culshaw', 36, 190, 78.68, 6);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (36, 'Fabio', 'Torvey', 21, 157, 68.06, 7);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (37, 'Hadleigh', 'Caizley', 25, 157, 87.08, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (38, 'Eziechiele', 'Baguley', 26, 195, 94.17, 18);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (39, 'Chadwick', 'Burtonwood', 40, 203, 85.22, 16);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (40, 'Neils', 'Hassan', 36, 193, 63.74, 7);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (41, 'Hamil', 'McKerton', 40, 198, 77.14, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (42, 'Barry', 'Stowte', 19, 178, 84.61, 20);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (43, 'Saunders', 'Brice', 38, 180, 66.62, 20);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (44, 'Salmon', 'Le Grice', 32, 170, 58.16, 11);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (45, 'Prentiss', 'Cartmel', 18, 200, 65.69, 10);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (46, 'Cass', 'Aven', 27, 201, 57.75, 8);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (47, 'Tris', 'Vaen', 36, 184, 66.72, 11);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (48, 'Paten', 'Lead', 29, 157, 54.2, 15);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (49, 'Gianni', 'Buckett', 27, 207, 60.58, 11);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (50, 'Care', 'Feely', 38, 162, 83.0, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (51, 'Trstram', 'Foulger', 30, 167, 54.04, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (52, 'Waiter', 'Houston', 21, 186, 86.66, 12);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (53, 'York', 'Petrasch', 39, 186, 72.29, 13);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (54, 'Kristoffer', 'Jaggers', 44, 156, 82.98, 12);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (55, 'Worth', 'Summerhayes', 45, 155, 53.56, 3);
insert into trkaci (id_trkaca, ime, prezime, godine, visina, tezina, fk_sponzor) values (56, 'Raymond', 'Peever', 26, 177, 73.57, 20);



insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (1, 333, 5.89, 'Paris', 'Strasbourg', 43);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (2, 225, 4.88, 'Bordeaux', 'Paris', 50);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (3, 125, 3.85, 'Le Havre', 'Nantes', 50);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (4, 284, 3.37, 'Saint-Etienne', 'Paris', 29);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (5, 247, 2.08, 'Reims', 'Saint-Etienne', 38);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (6, 345, 4.47, 'Montpellier', 'Strasbourg', 2);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (7, 255, 2.66, 'Rennes', 'Toulouse', 14);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (8, 262, 4.16, 'Toulouse', 'Nantes', 25);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (9, 230, 5.2, 'Le Mans', 'Reims', 36);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (10, 144, 5.93, 'Grenoble', 'Strasbourg', 53);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (11, 349, 3.57, 'Grenoble', 'Nice', 9);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (12, 188, 5.47, 'Paris', 'Paris', 38);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (13, 211, 3.26, 'Bordeaux', 'Saint-Etienne', 15);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (14, 274, 4.76, 'Saint-Etienne', 'Paris', 34);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (15, 260, 2.1, 'Paris', 'Toulouse', 40);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (16, 195, 5.83, 'Rennes', 'Dijon', 56);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (17, 161, 2.44, 'Strasbourg', 'Angers', 8);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (18, 311, 2.24, 'Strasbourg', 'Bordeaux', 56);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (19, 172, 5.06, 'Toulon', 'Toulon', 18);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (20, 138, 4.1, 'Nimes', 'Lille', 29);
insert into etape (id_etape, duzina, trajanje, startno_mesto, ciljno_mesto, fk_trkac_pobednik) values (21, 300, 2.74, 'Dijon', 'Nice', 43);
