-- Retrieve boat numbers with engine power greater than 50 and a specific supplier
select b.numero from ensbateau b where b.moteurb.puissance > 50 and b.marqueb.fournisseur = 'Dnanto'  ##there is another way to do with deref
-- Find boats with more than two sails
select b.numero from ensbateau b where (select count(v.numero) from table(b.voiles) v)>2;
-- Calculate the average sail surface grouped by boat brand
select b.marqueb.nom, avg(v.surface) from ensbateau b ,table(b.voiles) v group by b.marqueb.nom;
-- Calculate the average sail surface grouped by brand name
select m.nom, avg(v.surface) from ensmarque m, ensbateau b, table(b.voiles) v where b.marqueb.nom = m.nom group by m.nom;