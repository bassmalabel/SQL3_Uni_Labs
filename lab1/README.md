# Lab 1: Introduction to Relational Databases

This repository contains the SQL scripts and queries for **Lab 1** of the Relational Object Databases course. The lab serves as a review of traditional relational database concepts, providing a foundational understanding of database design, data manipulation, and querying.

## Objectives
- Understand the principles of relational databases.
- Design and implement relational schemas.
- Practice data manipulation using SQL (Structured Query Language).
- Explore basic and advanced SQL queries.

## Contents
### Files
- **`schema.sql`**: The SQL script containing table creation.
- **`data.sql`**: The SQL script containing the data insertion into the database created.
- **`schema.sql`**: Includes a variety of SQL queries demonstrating data retrieval and manipulation.
- **`readme.md`**: This documentation file.

### Tables Created
1. **Usine**: Represents factories with attributes like factory ID, name, and location.
2. **Produit**: Represents products with attributes like product ID, name, color, and weight.
3. **Fournisseur**: Represents suppliers with attributes like supplier ID, name, status, city, and email.
4. **Livraison**: Represents deliveries, linking factories, products, and suppliers.

### SQL Concepts Covered
1. **Table Creation**: Defining primary keys, foreign keys, and constraints.
2. **Data Insertion**: Populating tables with sample data.
3. **Constraints**: Implementing `CHECK`, `UNIQUE`, and `FOREIGN KEY` constraints.
4. **Basic Queries**:
   - `SELECT` statements with filters (`WHERE` clause).
   - Basic joins (INNER JOIN).
   - Aggregate functions (`SUM`, `AVG`, `MIN`, `MAX`).
5. **Advanced Queries**:
   - Nested queries.
   - Grouping data (`GROUP BY`).
   - Filtering grouped data (`HAVING`).
   - Set operations like `INTERSECT`.

## How to Use
1. Open your SQL client or IDE (e.g., Oracle SQL Developer, MySQL Workbench, etc.).
2. Execute the scripts in the following order:
   - Run `schema.sql` to create the database schema.
   - Run `data.sql` to populate the tables with sample data.
   - Run `queries.sql` to execute the provided queries.
3. Experiment with modifying queries and adding your own for deeper understanding.

## Example Queries
Below are some examples of queries included in the lab:
- Retrieve all factories located in Sochaux:
  ```sql
  SELECT NU, NomU FROM Usine WHERE Ville = 'Sochaux';
  ```
- Find suppliers delivering a specific product to a particular factory:
  ```sql
  SELECT F.NomF FROM Fournisseur F
  JOIN Livraison L ON F.NF = L.NF
  WHERE L.NP = 3 AND L.NU = 1;
  ```
- Calculate the average weight of products:
  ```sql
  SELECT AVG(Poids) FROM Produit;
  ```

## Next Steps
This lab establishes the foundational skills necessary for subsequent labs, where we delve into advanced relational and object-relational

---

Feel free to fork this repository and adapt the scripts as needed. For any questions or suggestions feel free to reach out.