-- Day 1 SQL Practice --

-- 1. Select all employees from department 101
SELECT * 
FROM employees
WHERE dept_id = 101;

-- 2. List employees with salary >= 60000
SELECT e.name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.salary >= 60000;

-- 3. View salaries in descending order
SELECT *
FROM salaries
ORDER BY salary DESC;
