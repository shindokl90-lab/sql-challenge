-- joining data HW 9 SQL

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
	ON e.emp_no = s.emp_no
ORDER BY emp_no; 

-- employees info from 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date between '01/01/1986' AND '12/31/1986'
ORDER BY hire_date; 

--manager of each dept
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name 
FROM departments d
JOIN dept_manager m 
ON d.dept_no = m.dept_no
JOIN employees e
ON m.emp_no = e.emp_no; 

--employees info by number
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d 
JOIN dept_emp de 
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no; 

--Hercules 
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- sales and development department list 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d 
JOIN dept_emp de 
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--descending order last name frequency
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name 
ORDER BY "Frequency" DESC;

