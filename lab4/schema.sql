-- Define and create a type 'marque' and a table 'ensmarque' to store instances of the brands
CREATE TYPE Marque AS OBJECT (Nom VARCHAR2(10), Fournisseur VARCHAR2(10)) 
create table ensmarque of marque (constraint pk_marque primary key (nom))

-- Define an object type 'Voile' representing a sail
CREATE TYPE Voile AS OBJECT (Numero NUMBER(6), Surface NUMBER(3), MarqueV REF Marque)
-- Define a collection type 'LesVoiles' as a table of 'Voile' objects
CREATE TYPE LesVoiles AS TABLE OF Voile ;

-- Define an object type 'Moteur' representing an engine with brand reference
CREATE TYPE Moteur AS OBJECT (Numero NUMBER(6), Puissance NUMBER(3), MarqueM REF Marque )

-- Define an object type 'Bateau' representing a boat with brand reference
CREATE TYPE Bateau AS OBJECT (Numero NUMBER(6), MoteurB Moteur, Voiles LesVoiles,MarqueB REF Marque )
-- Create a table to store instances of 'Bateau' with the necessary constraints 
create table ENSBateau of bateau (constraint pk_bateau primary key (Numero), constraint ref_marqueb marqueb references ensmarque, constraint unique_moteur unique(moteurb.numero), constraint ck_moteurb check( marqueb is not null)) 
nested table voiles store as tabvoiles(( constraint pk_voiles primary key (numero)))