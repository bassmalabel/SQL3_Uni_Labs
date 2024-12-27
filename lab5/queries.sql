-- QUERIES 

-- Retreive the names, surnames, of the researchers of the project with the code 02/SDRF/2022
select c.ref_chers.nom, c.ref_chers.prenom 
from projets p , Table(p.les_chercheurs) c 
where p.code = '02/SDRF/2022';

-- Retreive the name of institute that has the highest number of projects 
select p.ref_etab.code, p.ref_etab.nom, count(*)
from projets p 
group by p.ref_etab.code, p.ref_etab.nom
having count(*) = (select max(count(p.code)) from projets p group by p.ref_etab.code )