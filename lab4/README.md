# Lab 4: Collections

## Overview
This lab demonstrates the use of collections and nested tables in SQL through a model involving boats, engines, sails, and brands. The relationships between entities are defined using object types, references, and collections.

## Files

```
lab4
|- schema.sql   # Contains the SQL code for defining types and tables with the constraints
|- data.sql     # Includes SQL INSERT statements to populate the tables
|- queries.sql  # Contains queries for retrieving and manipulating the data
|- readme.md    # This documentation file
```

## Objectives
1. Creating object types and collections.
2. Managing nested tables with constraints.
3. Performing advanced queries using collections.

## Schema Overview

### Object Types

1. **Marque:** Represents a brand with attributes for name and supplier.
2. **Voile:** Represents a sail with attributes for number, surface, and a reference to a brand.
3. **Moteur:** Represents an engine with attributes for number, power, and a reference to a brand.
4. **Bateau:** Represents a boat with attributes for number, engine, a collection of sails, and a reference to a brand.

### Collection Types:

1. **LesVoiles:** A nested table to store multiple sails for each boat.

### Tables:

1. **ensmarque:** Stores brands with constraints like primary key.
2. **ensbateau:** Stores boats with nested tables for sails and constraints on engine and brand references.

### Constraints:

- **Primary Key:** Ensures unique identification for boats, brands, and sails.
- **References:** Ensures coherence between parent-child relationships.
- **Nested Table Constraints:** Maintains integrity within nested collections.

## Queries and Operations:

- Retrieving data based on nested table attributes.
- Aggregating data using collection elements.
- Inserting and updating data in collections.