-- Creating the type and object table Ecole to store information about schools
create type Ecole as object ( nomEcole Varchar(50));
create table ecoles of ecole (constraint pk_nom primary key (nomEcole)); 

-- Creating the type and object table Specialite to store information about the different scpecialities and the schools in which they are available
create type Specialite as object ( nomSpecialite Varchar(100), ref_ecole ref ecole);
create table specialites of specialite (constraint pk_nomspec primary key (nomSpecialite), constraint ck_ref check (ref_ecole is not null)); 

-- Creating the type and the object table Etudiant to store information about the students from defferent schools and specialities
create type Etudiant as object ( Matricule int, Nom Varchar(50), prenom varchar(50), ref_spec ref specialite);
create table etudiants of Etudiant (constraint pk_matricule primary key (Matricule )); 
