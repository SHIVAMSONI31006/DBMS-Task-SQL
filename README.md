# Database Setup and Schema Design (Task 1)

## 📌 Project Overview
This project contains a well-structured relational database schema for an **E-commerce domain**, built and executed completely via the Command Line Interface (CLI) in MySQL.

## 📁 Repository Contents
* `schemat1.sql`: The complete SQL script containing DDL commands (`CREATE DATABASE`, `CREATE TABLE`), constraints (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `NOT NULL`), and relationships.
* `Screenshot 2026-06-29 194134.jpg`: Execution output from the terminal showing the successfully created tables.

---

## 💬 Interview Questions & Answers

### 1. What is normalization?
Normalization is a database design technique that reduces data redundancy (duplication) and ensures data integrity by organizing fields and tables of a database.

### 2. Explain primary vs foreign key.
* **Primary Key:** Uniquely identifies each record in a table. It cannot contain NULL or duplicate values.
* **Foreign Key:** Used to link two tables together. It references the Primary Key of another table.

### 3. What are constraints?
Constraints are rules applied to table columns to limit the type of data that can go into them (e.g., `NOT NULL`, `UNIQUE`, `CHECK`, `FOREIGN KEY`).

### 4. What is a surrogate key?
An artificial or system-generated unique identifier assigned to a record when a natural unique key is unavailable (e.g., `AUTO_INCREMENT` IDs).

### 5. How do you avoid data redundancy?
By properly normalizing the database, splitting large datasets into logically related tables, and defining correct relationships using foreign keys.

### 6. What is ER diagram?
An Entity-Relationship (ER) Diagram is a visual flowchart that illustrates how "entities" such as people, objects, or concepts relate to each other within a system.

### 7. What are the types of relationships in DBMS?
* One-to-One (1:1)
* One-to-Many (1:M)
* Many-to-Many (M:N)

### 8. Explain the purpose of AUTO_INCREMENT.
It automatically generates a unique sequential number whenever a new record is inserted into a table, typically used for primary keys.

### 9. What is the default storage engine in MySQL?
**InnoDB** is the default storage engine for MySQL, which supports ACID transactions and foreign key constraints.

### 10. What is a composite key?
A combination of two or more columns in a table that can be used to uniquely identify each row (e.g., `order_id` + `product_id` in the `order_items` table).
