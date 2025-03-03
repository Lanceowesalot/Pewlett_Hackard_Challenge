# Pewlett_Hackard_Challenge
![HQ graphic](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/Pewlette%20Hackard%20HQ%20image.png)
# "Pewlett Hackard" Employee Analysis
In this Challenge "Pewlett Hackard" we were tasked to create and analyze a database of employees between 1980 and 2000. For this project, I modeled the data in an entity relationship diagram, engineered the data by creating a database in pgAdmin using SQL language, and then analyzed the data. 

## Data Modeling
Using QuickDBD (https://www.quickdatabasediagrams.com/) to create an ERD which allowed me to visualize the primary keys, the foreign keys, and other relationships, which aided me in creating the different table schemas in the database in pgAdmin. I also found this very useful for visualizing realtionships while writing queries.

![entity_relationship_diagram](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/ERD_Final.png).

## Data Engineering
I used SQL in pgAdmin to create a database of the employees using 6 CVS files. After reviewing the ERD, I used the following table schema to create the tables in the pgAdmin database. This required assigning the correct data type to each data column and creating the correct connections through primary and foreign key assignments. 

-- Create tables and import data
-- Drop if exists

DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_employees;
DROP TABLE IF EXISTS departments;

-- Create new table
CREATE TABLE departments (
  dept_no VARCHAR (40) NOT NULL,
  dept_name VARCHAR (40) NOT NULL,
  PRIMARY KEY (dept_no),
  UNIQUE (dept_name)
);

-- Verify successful data import
SELECT * FROM departments;

-- Drop if exists
DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE titles (
  emp_title_id VARCHAR(40) NOT NULL,
  title VARCHAR(40) NOT NULL,
  PRIMARY KEY (emp_title_id)
);

-- Verify successful data import
SELECT * FROM titles;

-- Drop table if exists

DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(40) NOT NULL,
  birthdate DATE NOT NULL,	
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  gender VARCHAR(6) NOT NULL,
  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id)
);

-- Verify successful data import
SELECT * FROM employees;

-- Drop if exists
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Verify successful data import
SELECT * FROM salaries;

-- Drop if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
  dept_no VARCHAR(40) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Verify successful data import
SELECT * FROM dept_manager;

-- Drop if exists
DROP TABLE IF EXISTS dept_employees;

-- Create new table
CREATE TABLE dept_employees (
  emp_no INT NOT NULL,
  dept_no VARCHAR(40) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),  -- Employees can be in multiple departments
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
  );

-- Verify successful data import
SELECT * FROM dept_employees;

## Data Analysis
I used SQL to analyze the data in the pgAdmin database I created. I querried for the following data:

Employee number, last name, first name, sex, and salary
![query_1](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%201.png)

Employee first name, last name, and hire date for the employees who were hired in 1986
![query_2](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%202.png)

Manager of each department, their department number, department name, employee number, last name, and first name
![query_3](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%203.png)

Employee department number, employee number, last name, first name, and department name
![query_4](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%204.png)

All employees who's first name is Hercules, last name beings with 'B', and their sex
![query_5](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%205.png)

Employees in the Sales department, their employee number, last name, and first name
![query_6](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%206.png)

Employees in the Sales and Development departments, their employee number, last name, first name, and department name
![query_7](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%207.png)

Frequency counts, in descending order, of all the employee last names
![query_8](https://github.com/Lanceowesalot/Pewlett_Hackard_Challenge/blob/main/Images/question%208.png)
