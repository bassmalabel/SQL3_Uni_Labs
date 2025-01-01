-- Create a relational table to store emplyees' information
CREATE TABLE EMPLOYES (
ID_EMPLOYE NUMBER PRIMARY KEY,
NOM VARCHAR2(50),
PRENOM VARCHAR2(50),
DEPARTEMENT_ID NUMBER,
SALAIRE NUMBER
);

-- Insert the data of the employees
INSERT ALL  
INTO EMPLOYES VALUES (1, 'Dupont', 'Jean', 101, 4000)
INTO EMPLOYES VALUES (2, 'Martin', 'Claire', 102, 5000)
INTO EMPLOYES VALUES (3, 'Durand', 'Paul', 101, 4500)
INTO EMPLOYES VALUES (4, 'Leclerc', 'Sophie', 103, 6000)
INTO EMPLOYES VALUES (5, 'Morel', 'Luc', 101, 3800)
SELECT * FROM dual;

-- This column is not indexed and doesn't have the unique or primary key constraints applied
-- Execution time 0.094s
SELECT * FROM EMPLOYES WHERE DEPARTEMENT_ID = 101;
-- We'll try to create an index for this column
CREATE INDEX IDX_DEPARTEMENT_ID ON EMPLOYES(DEPARTEMENT_ID);
-- After executing the same query
-- Execution time 0.02s
SELECT * FROM EMPLOYES WHERE DEPARTEMENT_ID = 101;

-- Create a table to store orders
CREATE TABLE COMMANDES (
ID_COMMANDE NUMBER PRIMARY KEY,
CLIENT_ID NUMBER,
DATE_COMMANDE DATE,
MONTANT_TOTAL NUMBER
);

-- Insert data into the orders table
INSERT ALL
INTO COMMANDES VALUES (1, 1001, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 250)
INTO COMMANDES VALUES (2, 1002, TO_DATE('2023-01-16', 'YYYY-MM-DD'), 300)
INTO COMMANDES VALUES (3, 1001, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 500)
INTO COMMANDES VALUES (4, 1003, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 150)
SELECT * FROM dual;

-- Retrieve all the rows from cammandes table that satisfy the condition
-- Execution time: 0.016s
SELECT * FROM COMMANDES
WHERE CLIENT_ID = 1001 AND DATE_COMMANDE > TO_DATE('2023-01-01', 'YYYY-MM-DD');
-- Create an composite index for both columns "Client_id" and "Data_commande"
CREATE INDEX IDX_CLIENT_DATE ON COMMANDES(CLIENT_ID,DATE_COMMANDE);
-- Execution time: 0.032s
SELECT * FROM COMMANDES
WHERE CLIENT_ID = 1001 AND DATE_COMMANDE > TO_DATE('2023-01-01', 'YYYY-MM-DD');
-- The execution time was supposed to be faster after creating the index, but it's not the case here 
-- That's due to the small table size 
-- Since the table COMMANDES contains very few rows, the database optimizer might find a full table scan more efficient than using the index
-- But the index will be more efficient with large tables 