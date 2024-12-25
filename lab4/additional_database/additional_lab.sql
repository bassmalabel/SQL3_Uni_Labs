--Schema Creation 
create type music_type as object (musique_name varchar(100));
create type film_type as object (film_name varchar(100));

create type col_music as table of music_type;
create type col_film as table of film_type;

create type actor_type as object (actor_name varchar(100), age number(2), films col_film);
create type singer_type as object (singer_name varchar(100), age number(2), music col_music);

create table actors of actor_type (constraint pk_actors primary key(actor_name), constraint ck_age check (age between 10 and 80))
nested table films store as tab_films ((constraint pk_film primary key (film_name)));
create table singers of singer_type (constraint pk_singers primary key(singer_name), constraint ck_ages check (age between 10 and 80))
nested table music store as tab_music ((constraint pk_music primary key (musique_name)));

-- Data Insertion 
insert into actors values ('Ji ChangWook', 35, col_film(film_type('Fabricated City'), film_type('day one')));
insert into actors values ('Kim Soohyun', 38, col_film(film_type('Queen of tears'), film_type('It is okay not to be okay')));
insert into singers values ('RM', 30, col_music(music_type('Mono.'), music_type('Indigo'), music_type('Right People Wrong Place')));
insert into singers values ('Agust D', 30, col_music(music_type('Agustd'), music_type('D-2'), music_type('D-DAY')));
insert into singers values ('Jimin', 30, col_music(music_type('Face'), music_type('Muse'), music_type('Promise')));

-- Examples of queries
select s.singer_name, m.musique_name from singers s, table(s.music) m;
select a.actor_name, f.film_name from actors a , table(a.films) f where f.film_name like '%day%';
select s.singer_name , count(m.musique_name) from singers s, table(s.music) m group by s.singer_name ;
select m.musique_name ,s.singer_name from singers s, table(s.music) m where s.singer_name like 'A%';
select a.actor_name, count(f.film_name) from actors a, table(a.films) f group by a.actor_name having count(f.film_name) >1 ;