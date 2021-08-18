--List the following details of each employee: employee number, last name, first name, sex, and salary.
--Join employee table and salary table
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE  hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
--Departments, dept_manager, employees
SELECT m.dept_no, d.dept_name, m.emp_no,e.last_name, e.first_name
FROM dept_manager m
JOIN employees e 
ON m.emp_no = e.emp_no
JOIN departments d 
ON m.dept_no = d.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
--Employees, dept_emp, departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x
ON e.emp_no = x.emp_no
JOIN departments d
ON x.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--Employees table
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
--Employees, dept_emp, departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x
ON e.emp_no = x.emp_no
JOIN departments d
ON x.dept_no = d.dept_no
WHERE d.dept_name= 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
--Employees, dept_emp, departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x
ON e.emp_no = x.emp_no
JOIN departments d
ON x.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) AS "Name Count"
FROM employees 
GROUP BY last_name
ORDER BY "Name Count" DESC;