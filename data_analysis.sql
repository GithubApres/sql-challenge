-- List the employee number, last name, first name, sex, 
-- and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;


-- List the first name, last name, and hire date for the employees
-- who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date >= '1986-01-01';


-- List the manager of each department along with their department number,
-- department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager dm
ON e.emp_no = dm.emp_no
LEFT JOIN departments d
ON dm.dept_no = d.dept_no;



-- List the department number for each employee along with that employee’s
-- employee number, last name, first name, and department name.
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no;


-- List first name, last name, and sex of each employee whose first name
-- is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND
SUBSTRING(e.last_name, 1, 1) = 'B';


-- List each employee in the Sales department, including 
-- their employee number, last name, and first name.
SELECT e.emp_no, e.first_name, e.last_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';



-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


-- List the frequency counts, in descending order, of all the 
-- employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name)
FROM employees e
GROUP BY e.last_name 
ORDER BY COUNT(e.last_name) DESC;





