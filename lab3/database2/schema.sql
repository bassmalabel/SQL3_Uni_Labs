-- Creation of types
create type film as object (nom_film VARCHAR2(30));
create type musique as object(nom_musique VARCHAR2(30));
create type acteur as OBJECT (nom_acteur VARCHAR2(30), ref_film REF film);
create type chanteur as OBJECT (nom_chanteur VARCHAR2(30), ref_chanson REF musique);

-- Creation of tables
create table films of film (constraint pk_film primary key(nom_film));
create table musiques of musique (constraint pk_musique primary key(nom_musique));
create table acteurs of acteur (constraint pk_acteur primary key (nom_acteur), ref_film References films);
create table chanteurs of chanteur (constraint nom_chanteur primary key(nom_chanteur ), ref_chanson scope is  musiques);