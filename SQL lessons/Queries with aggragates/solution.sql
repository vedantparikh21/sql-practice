-- Find the longest time that an employee has been at the studio
select 
	years_employed 
from employees e
order by years_employed desc
limit 1;
-- or another better solution:
select
	max(years_employed) as Max_years_employed
from employees e;

-- For each role, find the average number of years employed by employees in that role
select
	role,
	avg(yearS_employed) as avg_years_employed
from 
	employees
group by role;

-- Find the total number of employee years worked in each building
select
	 building,
	 sum(years_employed) as total_employee_yrs
from 
	employees
group by building

-- Find the number of Artists in the studio (without a HAVING clause)
select count(*) as "Number of Artists"
from employees
where role = 'Artist';

-- Find the number of Employees of each role in the studio
select 
	role,
	count(*) as num_of_employees
from 
	employees
group by role;

-- Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed)
FROM employees e
GROUP BY role
HAVING role = 'Engineer';

	 