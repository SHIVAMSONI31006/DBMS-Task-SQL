-- ==========================================
-- INTERNSHIP TASK 3: WRITING BASIC SELECT QUERIES
-- OBJECTIVE: EXTRACT DATA FROM A TABLE
-- ==========================================

-- ------------------------------------------
-- STEP 1: SELECT DATABASE & CREATE TABLE
-- ------------------------------------------
-- Automatically switches to your task3 database
USE task3;

CREATE TABLE IF NOT EXISTS interns (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    joining_date DATE,
    stipend INT,
    performance_score DECIMAL(3,1)
);

-- Clean up old data to prevent duplicate errors if rerun
TRUNCATE TABLE interns;

INSERT INTO interns (id, name, department, joining_date, stipend, performance_score) VALUES
(1, 'Aarav Patel', 'Engineering', '2026-01-15', 25000, 4.8),
(2, 'Isha Sharma', 'Data Science', '2026-02-01', 28000, 4.2),
(3, 'Rohan Das', 'Engineering', '2026-01-10', 22000, 3.9),
(4, 'Ananya Sen', 'Marketing', '2026-03-15', 18000, 4.5),
(5, 'Kabir Mehta', 'Data Science', '2026-02-15', 30000, 4.7),
(6, 'Meera Reddy', 'HR', '2026-04-01', 15000, 4.0);


-- ------------------------------------------
-- STEP 2: SELECT ALL AND SPECIFIC COLUMNS
-- ------------------------------------------

-- Query 2a: Retrieve all columns and all rows
SELECT * FROM interns;

-- Query 2b: Retrieve only the names and departments of all interns
SELECT name, department FROM interns;


-- ------------------------------------------
-- STEP 3: APPLY FILTERS (WHERE, AND, OR, LIKE, BETWEEN)
-- ------------------------------------------

-- Query 3a: Filter interns in the Engineering department (WHERE)
SELECT name, department 
FROM interns 
WHERE department = 'Engineering';

-- Query 3b: Filter interns with a high stipend AND a top performance score (AND)
SELECT name, stipend, performance_score 
FROM interns 
WHERE stipend >= 25000 AND performance_score >= 4.5;

-- Query 3c: Find interns working in either HR or Marketing (OR)
SELECT name, department 
FROM interns 
WHERE department = 'HR' OR department = 'Marketing';

-- Query 3d: Find interns whose names start with 'A' (LIKE with wildcard)
SELECT name, department 
FROM interns 
WHERE name LIKE 'A%';

-- Query 3e: Find interns whose stipends fall between 20,000 and 28,000 (BETWEEN)
SELECT name, stipend 
FROM interns 
WHERE stipend BETWEEN 20000 AND 28000;


-- ------------------------------------------
-- STEP 4: SORTING AND LIMITING RESULTS
-- ------------------------------------------

-- Query 4a: Sort interns by stipend in descending order (highest to lowest)
SELECT name, stipend 
FROM interns 
ORDER BY stipend DESC;

-- Query 4b: Get the top 3 highest-paid interns (ORDER BY + LIMIT)
SELECT name, stipend, department 
FROM interns 
ORDER BY stipend DESC 
LIMIT 3;