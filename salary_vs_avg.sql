with average_salary as (select department,avg(salary) as avg_sal 
from employee
group by department)
select e.department,e.first_name,e.salary,a.avg_sal from employee e
join average_salary  a
on e.department = a.department
order by department
