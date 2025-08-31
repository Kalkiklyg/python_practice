-- Day 2 SQL Practice --

-- 1. Employees with avg salary >= overall average
SELECT e.emp_id, AVG(s.salary) AS avg_salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY e.emp_id
HAVING AVG(s.salary) >= (SELECT AVG(salary) FROM salaries);

-- 2. Employees not assigned to any department
SELECT emp_id, dept_id
FROM employees
WHERE dept_id IS NULL;

-- 3. Top 3 highest salaries
SELECT emp_id, salary
FROM salaries
ORDER BY salary DESC
LIMIT 3;
