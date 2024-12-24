# Lab 3 - Second Database: Entertainment Records

## Overview
This lab extends the exploration of object-relational databases focussing on the difference between the two constraints `SCOPE IS` and `REFERENCES`.

## Files

```
database2
|- schema.sql   # Contains the SQL code for defining types and tables with the constraints
|- data.sql     # Includes SQL INSERT statements to populate the tables
|- queries.sql  # Contains queries for retrieving and manipulating the data
|- readme.md    # This documentation file
```

## Objectives
1. Help understand the difference between the constraints `SCOPE IS` and `REFERENCES`. 

## Schema Description
### Object Types
- **acteur**: Represents an actor, with the following attributes:
  - `nom`: Name of the actor.
  - `ref_film`: A reference to the film the actor is associated with.

- **chanteur**: Represents a singer, with the following attributes:
  - `nom`: Name of the singer.
  - `ref_musique`: A reference to the music the singer is associated with.

### Tables
- **films**: A table to store film records.
- **musiques**: A table to store music records.
- **acteurs**: A table to store actor records.
- **chanteurs**: A table to store singer records.

### Constraints

1. **Primary Key:** Each table has a primary key to ensure data integrity.
2. **Not Null:** Ensures that all references are valid and not null.
3. **Scope is:** Ensures the child-to-parent relationship is coherent.
3. **References:** Ensures both child-to-parent and parent-to-child coherence.

## Usage Instructions
1. **Create Schema**:
   Run the commands in `schema.sql` to create the necessary tables and object types.

2. **Insert Data**:
   Populate the database by executing the commands in `data.sql`.

3. **Execute Queries**:
   Use the commands in `queries.sql` to interact with the database and retrieve insights.


This README provides an overview of the second database's structure, data, and usage.