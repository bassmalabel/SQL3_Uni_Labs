-- DATA INSESION

-- Insert data into Usine table.
INSERT ALL  
INTO Usine (NU, NomU, Ville) VALUES (1, 'Citroen', 'Paris')
INTO Usine (NU, NomU, Ville) VALUES (2, 'Peugeot', 'Sochaux')
INTO Usine (NU, NomU, Ville) VALUES (3, 'Citroen', 'Sochaux')
INTO Usine (NU, NomU, Ville) VALUES (4, 'Renault', 'Paris')
INTO Usine (NU, NomU, Ville) VALUES (5, 'Toyota', 'Lyon')
SELECT * FROM dual;

-- Insert data into Produit table.
INSERT ALL  
INTO Produit (NP, NomP, Couleur, Poids) VALUES (1, 'Plaquette', 'Noir', 0.257)
INTO Produit (NP, NomP, Couleur, Poids) VALUES (2, 'Siège', 'Rouge', 15.230)
INTO Produit (NP, NomP, Couleur, Poids) VALUES (3, 'Siège', 'Vert', 15.230)
INTO Produit (NP, NomP, Couleur, Poids) VALUES (4, 'Pare-brise', NULL, 11.900)
INTO Produit (NP, NomP, Couleur, Poids) VALUES (5, 'Rétroviseur', 'Vert', 1.020)
SELECT * FROM dual;

-- Add a constraint for validating Email format in Fournisseur table.
ALTER TABLE Fournisseur
ADD CONSTRAINT chk_email
CHECK (Email LIKE '%@%');

-- Insert data into Fournisseur table.
INSERT ALL  
INTO Fournisseur (NF, NomF, Statut, Ville, Email) VALUES (1, 'Monroe', 'Producteur', 'Lyon', 'monroe@gmail.com')
INTO Fournisseur (NF, NomF, Statut, Ville, Email) VALUES (2, 'Au bon siège', 'Sous-traitant', 'Limoges', 'aubonsiege@gmail.com')
INTO Fournisseur (NF, NomF, Statut, Ville, Email) VALUES (3, 'Saint Gobain', 'Producteur', 'Paris', 'gobain@gmail.com')
SELECT * FROM dual;

-- Insert data into Fournisseur table.
INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (1, 2, 3, 2500);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (1, 3, 3, 3000);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (2, 2, 3, 120);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (3, 1, 1, 49);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (3, 2, 1, 45);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (3, 3, 1, 78);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (2, 4, 2, 52);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (2, 1, 1, 250);

INSERT INTO Livraison (NP, NU, NF, Quantite) VALUES (3, 1, 2, 60);