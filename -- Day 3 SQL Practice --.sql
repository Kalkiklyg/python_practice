-- Day 3 SQL Practice --

1)Employees who earn more than the average salary in their department.
select emply.name, emply.dept_id,avg(slres.salary)
from emply
join slres on emply.emp_id=slres.emp_id
group by emply.dept_id,emply.name
having avg(slres.salary)>60000

2)Find the second highest salary without using LIMIT.
select salary
from slres
order by salary desc

select max(salary)
from slres
where salary<(select max(salary) from slres)

3)List departments with the count of employees in each.
select dept_id,count(name)
from emply
group by dept_id