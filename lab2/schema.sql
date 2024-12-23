-- TABLES CREATION

-- Define Object Types and Hierarchy
create type adresse_type as object (numeroRue int, nomRue varchar(20), codePostal int, ville varchar(100)) not final; 

create type adresseWithEmail_type under adresse_type ( adresseEmail varchar(50));

create type personne_type as object (numero int, nom varchar(20), prenom varchar(20), adresse adresse_type, age int) not final; 

create type etudiant_type under personne_type (numCarteEtud int,anneeInsc date);

create type enseignant_type under personne_type (grade varchar(20));

-- Create the personnes table to store information about people (normal people, students, professors)
create table personnes of personne_type (constraint ck_age_constraint check (age > 17 and age < 60), constraint ck_ville_notnull check (adresse.ville is not null), constraint pk_constraint primary key(numero));