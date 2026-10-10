with department_salary_ranking as (
select
  d.department_name as department_name,
  e.name as name,
  e.salary as salary,
  dense_rank() over (
    partition by department_name
    order by salary DESC
  ) ranking
from employee e 
right join department d 
on d.department_id = e.department_id
)
SELECT
  department_name,
  name,
  salary
  -- ranking
from department_salary_ranking
where ranking <=3
order by department_name asc,
salary desc,
name ASC;
  