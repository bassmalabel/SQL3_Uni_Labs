-- DATA INSERSION

-- Insert data into Personnes table.
Insert into personnes values ( 100, 'KADI', 'YASSMINE', 
                               adresse_type(5, 'BENBOUALI Hassiba', 'Bejaia', 06000), 
                               30);
                            
Insert into personnes values ( enseignant_type(2010, 'ZAID', 'Samir', 
                               adresseWithEmail_type(12, 'rue DIDOUCHE Mourad', 19000, 'Sétif', 'kzaidi@estin.dz'), 
                               42, 'Professeur'));

Insert into personnes values ( etudiant_type(700, 'SALMY', 'Islam', 
                               adresseWithEmail_type(10, 'KRIM Belkacem', 16000, 'Alger', 'nselmi@estin.dz'), 
                               19, 777, TO_DATE('2018', 'YYYY')));