--QUERIES

-- Retrieve all factories with their details.
Select NU, Nomu, ville from usine ;
-- Retrieve factories located in Sochaux.
Select nu, nomu from usine where ville ='Sochaux';
-- Example queries combining tables to analyze data.
select nf from livraison where nu = 1 and np = 3; 
select np, nomp from produit where couleur is null;
select distinct nomu from usine;
select nu from usine where nomu = 'C%';
select np from produit where nump like '%s%' or nump like '%S%';
-- Example of a complex join query.
select f.nomf from fournisseur f join livraison l on f.nf = l.nf where l.np = 3 and l.nu = 1;
select p.nomp, p.couleur from produit p join livraison l on p.np = l.np where l.nf = 2;
select l.nf from livraison l join produit p on p.np = l.np where l.nu = 1 and p.couleur = 'rouge'; 
select f.nomf from fournisseur f join livraison l on l.np =f.nf join produit p on p.np = l.np join usine u on u.nu = l.nu where (u.ville = 'Sochaux' or u.ville = 'Paris') and p.couleur = 'rouge'; 
select l.np from livraison l join fournisseur f on f.nf = l.nf join usine u on u.nu = l.nu where u.ville = f.ville;
select l.nu from livraison l join usine u on u.nu = l.nu join fournisseur f on f.nf = l.nf where u.ville <> f.ville;
select nf from livraison where nu = 1 Intersect select nf from livraison where nu = 2;
select distinct nu from livraison where np in (select np from livraison where nf = 3);
select nu from livraison where nf =3 group by nu having sum(distinct nf) = 1; 
select nu from livraison where np not in (select np from produit where couleur <> 'rouge') and nf not in (select nf from fournisseur where ville = 'Paris') ;
-- Aggregate and analytical queries.
select sum(distinct nf) from fournisseur; 
select sum(distinct np) from produit where couleur is not null; 
select avg(poids) from produit; 
select sum(poids) from produit where couleur = 'Vert';
select min(poids) from produit where couleur is not null;
-- Grouping and filtering queries.
select nf, count(distinct np) from livraison group by nf;
select couleur, avg(poids) as avarage from produit group by couleur; 
select couleur from (select couleur, avg(poids) as avarage from produit group by couleur) where avarage > 10;
select sum(distinct l.np) from livraison l join fournisseur f on f.nf = l.nf where f.ville = 'Paris';
-- Subqueries and nested queries.
select np from produit where poids = (select min(poids) from produit);
-- Final query examples.
select nf, sum(distinct np) from livraison group by nf;
select f.nomf, sum(distinct l.np) from livraison l join fournisseur f on f.nf = l.nf group by l.nf;