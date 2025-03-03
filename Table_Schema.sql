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