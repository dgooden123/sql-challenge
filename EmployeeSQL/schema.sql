-- Creat tables for CSV import

-- Create departments table 

DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments

-- Create employees table 
DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
    emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

