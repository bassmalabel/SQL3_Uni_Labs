# Lab 2: Object-Relational Features in SQL

This lab demonstrates the use of Object-Relational Features in SQL, focusing on creating and using object types, table inheritance, and querying object-typed data.

## Key Concepts:

- Object Types: Creating types and subtypes to represent hierarchical data.
- Table of Objects: Storing object-typed data in tables.
- Type Hierarchies: Querying data using object type hierarchies.
- Using TREAT and IS OF to handle subtype-specific queries.

## Repository Structure
```
lab2
|- schema.sql   # Contains the SQL code for defining types and tables with the constraints
|- data.sql     # Includes SQL INSERT statements to populate the tables
|- queries.sql  # Contains queries for retrieving and manipulating the data
|- readme.md    # This documentation file
```

## SQL Concepts Covered

### Object Types and Subtypes:
1. **adresse_type**: Basic address information.
2. **adresseWithEmail_type**: Address with an email (subtype).
3. **personne_type**: Base type for persons.
4. **etudiant_type and enseignant_type**: Subtypes for students and teachers.

### Constraints:
- Check constraints on age (18 < age < 60).
- NOT NULL constraint on the city field (adresse.ville).
- Primary key on the number of person.

### Advanced Queries:
- Display object-typed data using **VALUE**. 
- Query specific subtypes with **TREAT** and **IS OF** to access more fields of the sub-types.

## How to Run
1. Create the database and user if not already done.
2. Execute the SQL files in the following order:
- **`schema.sql`**: Creates the schema and table.
- **`data.sql`**: Inserts sample data.
- **`README.md`**: Runs the queries to demonstrate lab features.