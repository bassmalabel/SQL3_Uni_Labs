-- QUERIES

--Display all the content of table Personnes
select * from personnes;
--Discplay the content of the table personnes as objects
select value(p) from personnes p; 
--Display the number, name, surname, and the email address of each person in the table personnes
select p.numero, p.nom, p.prenom, treat (p.adresse as adressewithemail_type).adresseemail as email from Personnes p;
--in case we want to return only the rows where the address is of type "adressewithemail_type" (only people with the email address) 
select p.numero, p.nom, p.prenom, treat (p.adresse as adressewithemail_type).adresseemail from personnes p where p.adresse is of (adressewithemail_type); 
--Display the number, name, surname, and the grade of teachers while displaying only the rows of type teachers 
select p.numero, p.nom, p.prenom, treat (value(p) as enseignant_type).grade as grade from Personnes p where value(p) is of (enseignant_type);
--Display the number, name, surname, and the card number of students while displaying only the rows of type student
select p.numero, p.nom, p.prenom, treat (value(p) as etudiant_type).numCarteEtud as numcard, treat (value(p) as etudiant_type).anneeInsc as annee from Personnes p where value(p) is of (etudiant_type);
--Display all the rows where it's neither a student nor a teacher 
select p.* from personne p where is not of (enseignant_type, etudiant_type) where is of (only personne_type);
select p.* from personnes p where value(p) is not of (enseignant_type, etudiant_type);