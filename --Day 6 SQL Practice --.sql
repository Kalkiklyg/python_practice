
--Day 6 SQL parctice--

SQL
Find employees who earn the maximum salary in each department.
SELECT emply.emp_id, emply.name, slres.salary
FROM emply 
JOIN slres ON emply.emp_id = slres.emp_id
WHERE slres.salary = (
  SELECT MAX(slres.salary)
  FROM slres 
  JOIN emply  ON slres.emp_id = emply.emp_id
  WHERE emply.dept_id = emply.dept_id
);

Find departments that have more than 3 employees
select count(emp_id),dept_id 
from emply
group by dept_id
having count(emp_id)>1;
