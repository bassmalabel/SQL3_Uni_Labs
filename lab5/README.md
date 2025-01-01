# Lab 5: Referential Collections

## Overview
This lab demonstrates the use of collections of referenecs and nested tables in SQL through a model involving projects, reaseachers and institutes. The relationships between entities are defined using object types, references, and collections.

## Files

```
lab5
|- schema.sql   # Contains the SQL code for defining types and tables with the constraints
|- data.sql     # Includes SQL INSERT statements to populate the tables
|- queries.sql  # Contains queries for retrieving and manipulating the data
|- readme.md    # This documentation file
```

## Objectives
1. Creating object types and referential collections.
2. Managing nested tables with references.
3. Performing advanced queries using referential collections.

## More about the referential collections
The use of collection of references in this database provides a clear and structured way to manage relationships between the entities of our database.

- **Efficiency in Storage:** By storing only references, you avoid data duplication. This is particularly useful when the referenced data (e.g: a row in another table) is large or frequently shared across multiple entities.

- **Maintain Consistency:** If the data in the referenced table changes, all collections that reference it automatically reflect those changes. You don't need to update multiple tables or collections manually.

- **Scalability:** This design makes it easier to scale databases because changes to the structure or content of the referenced table don’t affect the collections themselves.


## Schema Overview

### Object Types

1. **etablissement_type:** Represents an institute with attributes for code, name and type.
2. **chercheur_type:** Represents a researcher with attributes for code, name, family name, grade and a reference to an institute.
3. **ref_chercheur_type:** Represents an type with only one column which is a reference to a researcher, we're gonna need this type to create the collection of references.
4. **projet_type:** Represents a project with attributes for code, title, period of time, the field of research, sujet area, reference to the institute, reference to the leader of the project which is a researcher and a collection of references to the members of the project who are also researchers.

### Collection Types:

1. **col_chercheur:** A nested table to store multiple reseachers for each project(members of the project).

### Tables:

1. **Etablissements:** Stores institutes with a constraint of primary key.
2. **Chercheurs:** Stores reseachers with constraint of primary key, constraints on the reference to the institute.
3. **Projets:** Stores projects with a constraint of primary key and constraints on the reference to the instiutes, the leader of the project. 

### Constraints:

- **Primary Key:** Ensures unique identification for boats, brands, and sails.
- **References:** Ensures coherence between parent-child relationships.