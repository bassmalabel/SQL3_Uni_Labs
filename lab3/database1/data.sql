-- DATA INSERSION

-- Inserting data into the table Ecoles
Insert into ecoles values ('ESTIN');
Insert into ecoles values ('ESI ALGER');
Insert into ecoles values ('ESI SBA');


-- Inserting data into the table Specialities
Insert into specialites values ('IA et DS', (select ref(e) from ecoles e where e.nomecole = 'ESTIN'));
Insert into specialites values ('Cyber securite', (select ref(e) from ecoles e where e.nomecole = 'ESTIN'));
Insert into specialites values ('System informatique et logiciels', (select ref(e) from ecoles e where e.nomecole = 'ESI ALGER'));
Insert into specialites values ('System intillegent et donnees', (select ref(e) from ecoles e where e.nomecole = 'ESI ALGER'));
Insert into specialites values ('System information et web', (select ref(e) from ecoles e where e.nomecole = 'ESI SBA'));

-- Inserting data into the table Etudiants
Insert into etudiants values (0111, 'Ahmed', 'Benarab', (select ref(s) from specialites s where s.nomSpecialite = 'Cyber securite'));
Insert into etudiants values (0112, 'Fatima', 'Khelif', (select ref(s) from specialites s where s.nomSpecialite = 'System intillegent et donnees'));
Insert into etudiants values (0113, 'Youcef', 'Belhadj', (select ref(s) from specialites s where s.nomSpecialite = 'IA et DS'));
Insert into etudiants values (0114, 'Amina', 'Kaddour', (select ref(s) from specialites s where s.nomSpecialite = 'IA et DS'));
Insert into etudiants values (0115, 'Karim', 'Bouzidi', null);
Insert into etudiants values (0116, 'Nassima', 'Hamza', (select ref(s) from specialites s where s.nomSpecialite = 'System intillegent et donnees'));
Insert into etudiants values (0117, 'Mohamed', 'Djelloul', (select ref(s) from specialites s where s.nomSpecialite = 'Cyber securite'));

-- Updating a row in the table Etudiants
update etudiants e 
set e.ref_spec = (select ref(s) from specialites s where nomspecialite = 'System information et web')
where e.matricule = 0115