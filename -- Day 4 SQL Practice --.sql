-- Day 4 SQL Practice --

Find employees who earn more than the average salary of all employees
select emply.emp_id,slres.salary
from emply
join slres on emply.emp_id=slres.emp_id
where slres.salary>(select avg(salary) from slres)
'subquery , still not used to it'


Find the 3rd highest salary (without LIMIT, use subquery).
select max(salary)
from slres
where salary < (select max(salary) 
from slres where salary<(select max (salary) from slres));
"got the right words but messed up in intendetition" 

List departments where the average salary > 65,000.
select emply.dept_id,avg(slres.salary)
from emply
join slres on emply.emp_id=slres.emp_id
group by emply.dept_id
having avg(slres.salary) >65000
"problems with havinga nd where"