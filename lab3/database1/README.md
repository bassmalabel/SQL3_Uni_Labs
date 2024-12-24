# Lab 3: DATABASE 1 

This lab focuses on exploring advanced relational database concepts with object-oriented features, including object references. 
Below is an overview of the key elements implemented in this lab.


## File Structure

```
database1
|- schema.sql   # Contains the SQL code for defining types and tables
|- data.sql     # Includes SQL INSERT statements to populate the tables
|- queries.sql  # Contains queries for retrieving and manipulating the data
|- readme.md    # This documentation file
```


## Objectives

1. Understand the creation and use of object types in SQL.
2. Work with object references to model relationships between entities.
3. Use queries to retrieve data involving nested relationships, references and constraints.


## Schema Overview

### Object Types

1. **Ecole:** Represents a school.
2. **Specialite:** Represents a specialty, with a reference to an `Ecole`.
3. **Etudiant:** Represents a student, with a reference to a `Specialite`.

### Tables

- **ecoles:** Stores objects of type `Ecole`.
- **specialites:** Stores objects of type `Specialite` with constraints.
- **etudiants:** Stores objects of type `Etudiant` with constraints.

## Queries

1. Retrieve all school references:
   ```sql
   Select ref(e) from ecoles e;
   ```

2. Retrieve the name of the school associated with a specific specialty:
   ```sql
   Select s.ref_ecole.nomEcole from specialites s where s.nomSpecialite = 'Cyber securite';
   ```

3. Group specialties by their associated school:
   ```sql
   Select s.ref_ecole.nomEcole, count(s.nomSpecialite) as number_of_specialites from specialites s group by s.ref_ecole.nomEcole;
   ```

4. Group students by their associated school:
   ```sql
   Select e.ref_spec.ref_ecole.nomEcole as nom_ecole, count(e.nom) as number_of_students from etudiants e group by e.ref_spec.ref_ecole.nomEcole;
   ```


## Constraints

1. **Primary Key:** Each table has a primary key to ensure data integrity:
   - `pk_nom` for `ecoles`
   - `pk_nomspec` for `specialites`
   - `pk_matricule` for `etudiants`

2. **Not Null:** Ensures that all references are valid and not null.
3. We haven't used `scope is` or `references` constraints in this database -database1- because we were not familiarized with those two concepts yet, however you can look them up in the second database -database2- in this lab -lab3-. 


## Notes

- This lab emphasizes the use of references and hierarchical structures in relational databases.
- The queries explore the relationships and constraints implemented in the schema.


This README provides an overview of the second database's structure, data, and usage.
