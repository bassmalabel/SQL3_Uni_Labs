-- QUERIES

--Examples of queries

-- Retrieve all the references in the table 
Select ref(e) from ecoles e;
-- Retrieve the schools referenced by each speciality
Select s.ref_ecole from specialites s;
-- Retrieve the name of the school associated with a specific specialty 'Cyber securite'
Select s.ref_ecole.nomecole from specialites s where s.nomspecialite = 'Cyber securite';
-- Retrieve all the specialities available in the school named 'ESI ALGER'
Select s.nomspecialite from specialites s where s.ref_ecole.nomecole = 'ESI ALGER';
-- Group specialties by their associated school 
Select s.ref_ecole.nomecole ,count(s.nomspecialite) as number_of_specialites from specialites s Group by s.ref_ecole.nomecole;
-- Group students by their associated school 
Select e.ref_spec.ref_ecole.nomecole as nom_ecole ,count(e.nom) as number_of_students from etudiants e Group by e.ref_spec.ref_ecole.nomecole;