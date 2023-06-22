--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT 
	employees.emp_no,
	last_name,
	first_name,
	sex,
	salaries.salary
FROM
	employees
INNER JOIN
	salaries
ON employees.emp_no = salaries.emp_no
ORDER BY last_name;
	
--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT
	last_name,
	first_name,
	hire_date
FROM
	employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'


--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT 
	dept_manager.dept_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name,
	employees.emp_no
FROM
	dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no
ORDER BY last_name;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT 
	dept_emp.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM
	dept_emp
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no

ORDER BY employees.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT
	last_name,
	first_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules' AND
	last_name LIKE 'B%' 


--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no

WHERE dept_name = 'Sales'

ORDER BY employees.emp_no;	

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no

WHERE dept_name = 'Sales' OR dept_name = 'Development'

ORDER BY employees.emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT(last_name)AS Freequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC