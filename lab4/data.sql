-- DATA INSERTION 

-- Insert records into the 'ensmarque' table
insert into ensmarque values (marque('Bobato', 'Omonbato')) 
insert into ensmarque values (marque('Jolivoile', 'Voilou'))

-- Insert records into the 'ensbateau' table with nested 'Voiles' and brand references
insert into ensbateau values (115643, null, lesvoiles(voile(333412, 20, (select ref(m) from ensmarque m where m.nom = 'Bobato'))), (select ref(m) from ensmarque m where m.nom = 'Jolivoile'))
insert into ensbateau values (115643, null, lesvoiles(voile(333411, 30, (select ref(m) from ensmarque m where m.nom = 'Jolivoile')), voile(333413, 40, (select ref(m) from ensmarque m where m.nom = 'Bobato'))), (select ref(m) from ensmarque m where m.nom = 'Jolivoile'))
-- Additional instance
insert into ensbateau values (115648, null, lesvoiles(voile(333414, 30, (select ref(m) from ensmarque m where m.nom = 'Jolivoile')), voile(333416, 40, (select ref(m) from ensmarque m where m.nom = 'Bobato'))), (select ref(m) from ensmarque m where m.nom = 'Bobato'))

-- Update the engine details for a specific boat
Update ensbateau 
set moteurb = Moteur(555466, 75, (select ref(m) from ensmarque m where m.nom = 'Boloto'))
where numero = 115643 

-- Insert a new sail into the 'Voiles' collection of a specific boat
insert into table (select b.voiles from ensbateau b where b.numero = 115643) 
values (voile(444555, 25, (select ref(m) from ensmarque m where m.nom = 'Jolivoile')))