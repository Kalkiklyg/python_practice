-- Day 5 SQL Practice --


Find employees who have a salary greater than the average salary in their department.
select emply.emp_id,emply.dept_id,slres.salary
from emply
join slres on emply.emp_id=slres.emp_id 
group by emply.dept_id
where slres.salary>(select avg(salary)from slres)