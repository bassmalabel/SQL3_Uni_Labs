-- QUESRIES

-- Retrieve all the references of the tables Chanteurs and Acteurs
select ref(c) from chanteurs c;
select ref(a) from acteurs a;

-- Retrieve all the actors referenced by the film Break The Silence
select a.nom_acteur from acteurs a where a.ref_film.nom_film like 'Break The Silence';

-- Calculate the number of singers who have a song named Life Goes On 
select c.ref_chanson.nom_musique as song_name, count(c.nom_chanteur) as number_of_singers from chanteurs c group by c.ref_chanson.nom_musique having c.ref_chanson.nom_musique = 'Life Goes On';
-- Retrieve the names of singers that have a song names Life Goes On
select c.ref_chanson.nom_musique as song_name , c.nom_chanteur as singer_name from chanteurs c where c.ref_chanson.nom_musique = 'Life Goes On';