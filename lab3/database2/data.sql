-- Data Insertion

-- Inserting data into the table films
INSERT INTO films VALUES ('Burn The Stage');
INSERT INTO films VALUES ('Break The Silence');
INSERT INTO films VALUES (`It's Okay Not To Be Okay`);
INSERT INTO films VALUES ('Itaewon Class');
INSERT INTO films VALUES ('Vagabond');

-- Inserting data into the table musiques
INSERT INTO musiques VALUES ('Life Goes On');
INSERT INTO musiques VALUES ('Black Swan');
INSERT INTO musiques VALUES ('Film Out');
INSERT INTO musiques VALUES ('Closer Than This');
INSERT INTO musiques VALUES ('Never Let Go');
INSERT INTO musiques VALUES ('We On');
INSERT INTO musiques VALUES ('Still With You');
INSERT INTO musiques VALUES ('People');
INSERT INTO musiques VALUES ('Wild Flower');
INSERT INTO musiques VALUES ('Tokyo');

-- Inserting data into the tables acteurs and chanteurs
INSERT INTO acteurs VALUES (acteur('kim seokjin', (SELECT REF(f) FROM films f WHERE f.nom_film = 'Break The Silence')));
INSERT INTO acteurs VALUES (acteur('kim Sohyun', (SELECT REF(f) FROM films f WHERE f.nom_film = `It's Okay Not To Be Okay`)));
INSERT INTO acteurs VALUES (acteur('Seo Yeji', (SELECT REF(f) FROM films f WHERE f.nom_film = `It's Okay Not To Be Okay`)));
INSERT INTO acteurs VALUES (acteur('Park Seojoon', (SELECT REF(f) FROM films f WHERE f.nom_film = 'Itaewon Class')));
INSERT INTO acteurs VALUES (acteur('Song Joongi', (SELECT REF(f) FROM films f WHERE f.nom_film = 'Vagabond')));

INSERT INTO chanteurs VALUES (chanteur('BTS', (SELECT REF(m) FROM musiques m WHERE nom_musique = 'Life Goes ON')));
INSERT INTO chanteurs VALUES (chanteur('Jimin', (SELECT REF(m) FROM musiques m WHERE nom_musique = 'Closer Than This')));
INSERT INTO chanteurs VALUES (chanteur('Jungkook', (SELECT REF(m) FROM musiques m WHERE nom_musique = 'Never Let GO')));
INSERT INTO chanteurs VALUES (chanteur('Agust D', (SELECT REF(m) FROM musiques m WHERE nom_musique = 'People')));
INSERT INTO chanteurs VALUES (chanteur('RM', (SELECT REF(m) FROM musiques m WHERE nom_musique = 'Wild Flower')));

-- Deleting data from the tables films and chanteurs (executed at the end - after the queries so we can see the results of our queries-)
DELETE FROM films WHERE nom_film = 'Burn The Stage'; 
DELETE FROM musiques WHERE nom_musique = 'Black Swan';