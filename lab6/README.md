# Lab 6: Indexes

## Overview
This lab explores the creation and management of indexes in SQL to optimize query performance. It also highlights how constraints such as `PRIMARY KEY` and `UNIQUE` implicitly create indexes. The lab is divided into two sections, focusing on practical use cases and performance measurements.

## Files

```
lab6
|- Lab6.1.sql   # Contains the SQL code 
|- Lab6.2.sql   # Contains 
|- readme.md    # This documentation file
```

## Objectives
1. Understand the automatic creation of indexes for constraints (`PRIMARY KEY` and `UNIQUE`).
2. Learn how to manually create and use single-column, composite, and functional indexes.
3. Measure the performance impact of indexes on query execution.
4. Understand scenarios where indexes may not improve performance.


## **Contents**

### **Lab 6.1: Indexing with `EMP_IND` Table**

#### **Schema and Data Insertion**
- A table `EMP_IND` is created with `PRIMARY KEY` and `UNIQUE` constraints.
- Sample data is inserted to test indexing behavior.

#### **Key Queries**
- Display indexes created for the table using `USER_INDEXES`.
- View indexed columns with `USER_IND_COLUMNS`.
- Measure query performance with and without indexes.

#### **Advanced Indexing**
- Functional index on `UPPER(ENAME)` to support case-insensitive queries.
- Manual creation of single-column and unique indexes for additional columns (`nickname`, `email`).

### **Lab 6.2: Performance Optimization with `EMPLOYES` and `COMMANDES` Tables**

#### **Scenario 1: Indexing on Single Column (`DEPARTEMENT_ID`)**
- Created an index for `DEPARTEMENT_ID` in the `EMPLOYES` table.
- Compared query execution times before and after indexing.

#### **Scenario 2: Composite Index on `COMMANDES` Table**
- Created a composite index on `CLIENT_ID` and `DATE_COMMANDE`.
- Analyzed performance of queries filtering on both columns.
- Observed that small table size impacts index efficiency.


## **Key Takeaways**
1. **Automatic Index Creation**:
   - Constraints such as `PRIMARY KEY` and `UNIQUE` create implicit unique indexes.
   
2. **Functional Indexing**:
   - Indexes can be created on expressions (e.g., `UPPER(ENAME)`) to optimize specific query patterns.

3. **Composite Indexing**:
   - Useful for queries filtering on multiple columns simultaneously.

4. **Performance Insights**:
   - Indexes improve performance significantly for large datasets.
   - For small tables, the optimizer may prefer full table scans over index usage.


## **How to Use This Lab**
1. Run the SQL scripts sequentially to create tables, insert data, and create indexes.
2. Use `EXPLAIN PLAN` to analyze query execution and validate index usage.
3. You can modify dataset sizes to observe differences in index performance.