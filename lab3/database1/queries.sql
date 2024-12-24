-- QUERIES

--Examples of queries
Select ref(e) from ecoles e;
Select s.ref_ecole from specialites s;
Select s.ref_ecole.nomecole from specialites s where s.nomspecialite = 'Cyber securite';
Select s.nomspecialite from specialites s where s.ref_ecole.nomecole = 'ESI ALGER';
Select s.ref_ecole.nomecole ,count(s.nomspecialite) as number_of_specialites from specialites s Group by s.ref_ecole.nomecole;
Select e.ref_spec.ref_ecole.nomecole as nom_ecole ,count(e.nom) as number_of_students from etudiants e Group by e.ref_spec.ref_ecole.nomecole;