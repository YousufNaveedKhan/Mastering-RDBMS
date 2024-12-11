-- Create a new database named Aptech
CREATE DATABASE Aptech;

-- Switch to the Aptech database
USE Aptech;

-- Create the Students table with ID, Name, and Age columns
CREATE TABLE Students (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name VARCHAR(33),
    Age VARCHAR(3)
);

-- Retrieve all records from the Students table
SELECT 
    *
FROM
    Students;

-- Insert multiple records into the Students table
INSERT INTO Students (Name, Age) VALUES 
    ('Muhammad Faham', '23'),
    ('Muhammad Mohsin', '24'),
    ('Faizan Abdul Wahid', '26'),
    ('Abdul Aziz', '17'),
    ('Saad Abdullah', '18'),
    ('Jasema Imran', '19'),
    ('Farzeen Khan Rohilla', '20');

-- Add new columns Contact and Faculty to the Students table
ALTER TABLE Students 
    ADD COLUMN Contact VARCHAR(11),  -- Contact information for the student
    ADD COLUMN Faculty VARCHAR(33);-- Faculty or mentor assigned to the student

UPDATE Students 
SET 
    Faculty = 'Sir Yousuf';

-- Change the data type of the Age column from VARCHAR to INT
ALTER TABLE Students 
MODIFY COLUMN Age INT;

-- Attempt to insert a record with a value 'Age' into the Age column
-- This will fail due to type mismatch (Age column is now INT)
INSERT INTO Students (Age) VALUES ('Age');

-- Remove the Contact column from the Students table
ALTER TABLE Students 
DROP COLUMN Contact;

-- Create the Employees table with ID, Name, Department, and Salary columns
CREATE TABLE Employees (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name VARCHAR(33),
    Department VARCHAR(33),
    Salary INT
);

-- Retrieve all records from the Employees table
SELECT 
    *
FROM
    Employees;

-- Insert multiple records into the Employees table
INSERT INTO Employees (Name, Department, Salary) VALUES 
    ('Muhammad Faham', 'Sales', 158000),
    ('Muhammad Mohsin', 'Production', 53000),
    ('Faizan Abdul Wahid', 'Production', 98000),
    ('Abdul Aziz', 'Marketing', 12500),
    ('Saad Abdullah', 'Sales', 32150),
    ('Jasema Imran', 'Sales', 2500),
    ('Farzeen Khan Rohilla', 'Marketing', 43120),
    ('Zain Kamran', 'Marketing', NULL),       -- Salary is NULL (no data available)
    ('Muhammad Mahad', 'Production', 0),      -- Salary is 0
    ('Hadiqa Khan', 'Production', NULL);-- Salary is NULL (no data available)

SELECT 
    SUM(Salary) AS 'Total Salary Amount'
FROM
    Employees;

-- Find the highest salary in the Employees table
SELECT 
    MAX(Salary) AS 'Highest Salary'
FROM
    Employees;

-- Find the lowest salary in the Employees table
SELECT 
    MIN(Salary) AS 'Lowest Salary'
FROM
    Employees;

-- Count the number of non-null salary entries in the Employees table
SELECT 
    COUNT(Salary) AS 'Number of Employees with Salary'
FROM
    Employees;

-- Retrieve all employees with a salary greater than 100,000
SELECT 
    *
FROM
    Employees
WHERE
    Salary > 100000;

-- Retrieve all employees working in the 'Production' department
SELECT 
    *
FROM
    Employees
WHERE
    Department = 'Production';

-- Retrieve all employees with a salary between 50,000 and 100,000 (inclusive)
SELECT 
    *
FROM
    Employees
WHERE
    Salary > 50000 AND Salary < 100000;

-- Retrieve all employees with a salary greater than or equal to 150,000 
-- Note: This query has no effect due to the condition being the same as >= 150,000
SELECT 
    *
FROM
    Employees
WHERE
    Salary >= 150000 OR Salary >= 160000;
