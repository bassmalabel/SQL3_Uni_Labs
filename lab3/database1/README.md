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

## Constraints

1. **Primary Key:** Each table has a primary key to ensure data integrity
2. **Not Null:** Ensures that all references are valid and not null.
3. We haven't used `scope is` or `references` constraints in this database -database1- because we were not familiarized with those two concepts yet, however you can look them up in the second database -database2- in this lab -lab3-. 


## Notes

- This lab emphasizes the use of references and hierarchical structures in relational databases.
- The queries explore the relationships and constraints implemented in the schema.


This README provides an overview of the second database's structure, data, and usage.
