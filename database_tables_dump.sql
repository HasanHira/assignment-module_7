--------------------------------------------------
-- Author: Md Hasanuzzaman Hira
-- Database: fiction_db
-- Generation Time: 2023-03-20 17:57:41.1503
-- -------------------------------------------------------------

--  Company Name:   XYZ Corp
--  Database Name:  fiction_db



/********* Creating Tables *********/

CREATE TABLE employees(
    EMPLOYEE_ID int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME varchar(100),
    AGE int(3) UNSIGNED,
    SALARY decimal(9,2) NOT NULL,
    DEPARTMENT_ID int(25) NOT NULL
);

CREATE TABLE departments(
    DEPARTMENT_ID int(25) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME varchar(50) NOT NULL,
    MANAGER varchar(100)
);

INSERT INTO departments (DEPARTMENT_ID, NAME, MANAGER) VALUES (1, 'Marketing', 'James Bond')
INSERT INTO departments (DEPARTMENT_ID, NAME, MANAGER) VALUES (2, 'Finance', 'Emma Watson');
INSERT INTO departments (DEPARTMENT_ID, NAME, MANAGER) VALUES (3, 'Sales', 'Jack Harlow');   

INSERT INTO employees('EMPLOYEE_ID', 'NAME', 'AGE', 'SALARY', 'DEPARTMENT_ID')
    VALUES (1001, 'John Doe', 25, 60000.00, 1);


-- id	name	age	salary	department_id
-- 1001	John Doe	25	60000	1
-- 1002	Jane Smith	30	75000	2
-- 1003	Bob Adams	40	50000	1
-- 1004	Lisa Jones	35	90000	3
-- 1005	Tom Smith	45	55000	2

-- departments table:
-- id	name	manager
-- 1	Marketing	James Lee
-- 2	Finance	Emma Chen
-- 3	Sales	Jack Wang

-- Query to select all columns and rows from the employees table:

-- SELECT * FROM employees;

-- // ** This command selects all columns and rows from the employees table.



-- Query to select only the name and salary columns of all employees with a salary greater than 50000:

-- SELECT name, salary FROM employees WHERE salary > 50000;

-- // ** This command selects only the name and salary columns of all employees with a salary greater than 50000.



-- Query to calculate the average salary of all employees:

-- SELECT AVG(salary) FROM employees;

-- // ** This command calculates the average salary of all employees.



-- Query to count the number of employees who work in the "Marketing" department:

-- SELECT COUNT(*) FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Marketing');

-- // ** This command counts the number of employees who work in the "Marketing" department by selecting the id of the Marketing department from the departments table and then counting the number of employees with that department_id in the employees table.



-- Query to update the salary column of the employee with an id of 1001 to 60000:

-- UPDATE employees SET salary = 60000 WHERE id = 1001;

-- // ** This command updates the salary column of the employee with an id of 1001 to 60000.



-- Query to delete all employees whose salary is less than 30000:

-- DELETE FROM employees WHERE salary < 30000;

-- // ** This command deletes all employees whose salary is less than 30000.



-- Query to select all columns and rows from the departments table:

-- SELECT * FROM departments;

-- // ** This command selects all columns and rows from the departments table.



-- Query to select only the name and manager columns of the "Finance" department:

-- SELECT name, manager FROM departments WHERE name = 'Finance';

-- // ** This command selects only the name and manager columns of the "Finance" department.



-- Query to calculate the total number of employees in each department:

-- SELECT departments.name, COUNT(*) FROM employees JOIN departments ON employees.department_id = departments.id GROUP BY departments.name;

-- // ** This command calculates the total number of employees in each department by joining the employees and departments tables on department_id and id respectively, grouping the results by department name, and counting the number of employees in each group.



-- Query to insert a new department called "Research" with a manager named "John Doe":

-- INSERT INTO departments (name, manager) VALUES ('Research', 'John Doe');

-- // ** This command inserts a new department called "Research" with a manager named "John Doe" into the departments table.