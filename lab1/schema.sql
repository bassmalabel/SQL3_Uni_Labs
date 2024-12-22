-- TABLES CREATION

-- Create the Usine table to store information about factories. (Factory ID, Factory Name, Factory City)
create table Usine ( NU int primary key, NomU varchar(30), Ville varchar(30)); 
-- Create the Produit table to store information about Products. (Product ID, Product Name, Product Color, Product Weight)
create table Produit ( NP int primary key, NomP varchar(30), Couleur varchar(30), Poids float); 
-- Create the Fournisseur table to store information about factories. (Supplier ID, Supplier Name, Supplier Status, Supplier City, Unique Email, Email format validation)
create table Fournisseur ( NF int primary key, NomF varchar(30), Statut varchar(30),  ville varchar(30), Email varchar(30) Unique, check (Email= '%@%')); 
-- Create the Livraison table to manage deliveries between factories, products, and suppliers.
create table Livraison ( NU int, NP int, NF int, quantite int, 
                        check (quantite > = 0), 
                        primary key (NU, NP, NF), 
                        foreign key (NU) references Usine (NU), 
                        foreign key (Np) references Produit (NP), 
                        foreign key (NF) references Fournisseur (NF)); 