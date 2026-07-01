-- =====================================================================
-- TASK 2: DATA INSERTION, HANDLING NULLS, UPDATES, AND DELETES
-- =====================================================================

-- 1. DATABASE SETUP
-- Creating a clean 'interns' table with proper constraints and defaults
CREATE TABLE interns (
    intern_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    department TEXT DEFAULT 'General',
    joining_date DATE,
    stipend REAL,
    performance_score INTEGER DEFAULT NULL
);


-- =====================================================================
-- 2. DATA INSERTION & HANDLING MISSING VALUES (NULLs)
-- =====================================================================

-- Case A: Inserting a complete row with all field values provided
INSERT INTO interns (full_name, department, joining_date, stipend, performance_score)
VALUES ('Rahul Sharma', 'IT', '2026-06-01', 15000.00, 85);

-- Case B: Handling missing values explicitly using the NULL keyword
-- (Priya's stipend and performance score are currently unknown)
INSERT INTO interns (full_name, department, joining_date, stipend, performance_score)
VALUES ('Priya Patel', 'Data Science', '2026-06-15', NULL, NULL);

-- Case C: Handling missing values implicitly using the column DEFAULT constraint
-- (Department is omitted here, so it will automatically default to 'General')
INSERT INTO interns (full_name, joining_date, stipend)
VALUES ('Amit Verma', '2026-07-01', 12000.00);


-- =====================================================================
-- 3. DATA UPDATING (With strict WHERE conditions)
-- =====================================================================

-- Case A: Updating a specific row using its Unique ID
-- (Updating Priya's stipend now that it has been approved)
UPDATE interns 
SET stipend = 16000.00 
WHERE intern_id = 2;

-- Case B: Updating records dynamically by filtering for NULL values
-- (Assigning a standard baseline score of 50 to anyone whose score IS NULL)
UPDATE interns
SET performance_score = 50
WHERE performance_score IS NULL;


-- =====================================================================
-- 4. DATA DELETION (With safe WHERE conditions)
-- =====================================================================

-- Case A: Deleting a specific record from the table
-- (Amit Verma declined the offer, so we remove his record safely using his ID)
DELETE FROM interns
WHERE intern_id = 3;


-- =====================================================================
-- 5. DATA SELECTION (Verification of final output)
-- =====================================================================
-- This returns a clean, fully updated, and consistent dataset
SELECT 
    intern_id AS "Intern ID",
    full_name AS "Full Name",
    department AS "Department",
    joining_date AS "Joining Date",
    stipend AS "Stipend (INR)",
    performance_score AS "Performance Score"
FROM 
    interns;