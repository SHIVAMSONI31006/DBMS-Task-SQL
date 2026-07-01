# Internship Task 2: Data Insertion and Handling Nulls

## Objective
The goal of this assignment is to practice fundamental Data Manipulation Language (DML) operations in SQL—specifically `INSERT`, `UPDATE`, and `DELETE` statements—while properly managing missing data using `NULL` values and default constraints.

## Tools Used
* **Database Engine:** SQLite / DB Fiddle / SQLiteStudio
* **Language:** SQL

## Repository Files
* `task_2.sql`: The complete SQL script containing the database schema definition, data insertions, null modifications, records cleanups, and a final selection filter query.

---

## Detailed Implementation Summary

### 1. Database & Table Setup
A relational table named `interns` is initialized with dynamic fields designed to simulate standard industry tracking systems:
* `intern_id`: Auto-incrementing primary key.
* `full_name`: Standard text, forced constraint (`NOT NULL`).
* `department`: Default fallback assigned dynamically (`DEFAULT 'General'`).
* `joining_date`: Standard calendar formatted field.
* `stipend`: Numerical financial metric tracking compensation.
* `performance_score`: Nullable integer allowing placeholder data (`DEFAULT NULL`).

### 2. Handling Nulls and Edge Cases during Data Insertion
* **Complete Record Integration:** Standard data payload showing full parameter populations.
* **Explicit NULL Handling:** Demonstrates field placeholders using the `NULL` keyword when parameters are uncertain or pending corporate approval.
* **Implicit Default Application:** Omitting specific structural parameters to trigger the predefined `DEFAULT` clause seamlessly without interrupting runtime tasks.

### 3. Conditional Data Updating
* **Primary Key Target Operations:** Updating targeted database values cleanly utilizing unique identifier tracking (`WHERE intern_id = 2`).
* **Dynamic Missing Value Transformation:** Querying specifically via the relational checking operator (`WHERE performance_score IS NULL`) to systematically normalize datasets. *Note: Structural value tests are performed with `IS NULL`, never with comparative operators like `= NULL`.*

### 4. Controlled Record Deletion
* Removes targeted table items safely using precise `WHERE` clauses to guard corporate datasets against bulk wiping hazards.

---

## Expected Output Validation
Executing the final analytical `SELECT` statement produces a structured, clean, and fully consistent summary:

| Intern ID | Full Name | Department | Joining Date | Stipend (INR) | Performance Score |
| :---: | :--- | :--- | :---: | :---: | :---: |
| **1** | Rahul Sharma | IT | 2026-06-01 | 15000.00 | 85 |
| **2** | Priya Patel | Data Science | 2026-06-15 | 16000.00 | 50 |

---

## Key Technical Best Practices Documented
1. **The Safety of WHERE Constraints:** Always isolate operations using unique operational primary keys to avoid bulk database corruption.
2. **The Nature of Unknown Elements:** Because `NULL` signifies an undefined state, logical comparisons like `= NULL` are invalid. Use `IS NULL` or `IS NOT NULL` for clean evaluations.
3. **Automated Structural Fallbacks:** Using clear column level `DEFAULT` properties safeguards records against structural processing faults during light payloads.