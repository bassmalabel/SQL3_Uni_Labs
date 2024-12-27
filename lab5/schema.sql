-- SCHEMA

-- Define the type and create table the table where we store information about Etablissement 
create type Etablissement_type as object (code varchar(15), nom varchar(20), type varchar(20));
create table Etablissements of Etablissement_type (constraint pk_etab primary key (code));

-- Define the type, the reference collection and create table the table where we store information about Chercheurs 
create type chercheur_type as object (code varchar(15), nom varchar(20), prenom varchar(20), grade varchar(20), ref_etab ref Etablissement_type);
create table Chercheurs of chercheur_type (constraint pk_cher primary key (code), 
                                           constraint cnst_ref_etab ref_etab references Etablissements, 
                                           constraint nn_ref_etab check (ref_etab is not null));
create type ref_chercheur_type as object (ref_chers ref chercheur_type); 
create type col_chercheur as table of ref_chercheur_type; 

-- Define the type project and create the table to store information about projects 
create type projet_type as object (code varchar(15), intitule varchar(50), duree varchar(6), domaine varchar(20), filiere varchar(20), ref_etab ref Etablissement_type, ref_resp ref chercheur_type, les_chercheurs col_chercheur);
create table projets of projet_type (constraint pk_prj primary key (code), 
                                      constraint cnst_ref_presp ref_resp references Chercheurs, 
                                      constraint nn_ref_presp check (ref_resp is not null),
                                      constraint cnst_ref_petab ref_etab references Etablissements, 
                                      constraint nn_ref_petab check (ref_etab is not null))
nested table les_chercheurs store as tab_chercheurs; 