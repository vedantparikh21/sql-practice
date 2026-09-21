-- Find the number of movies each director has directed
select
	director,
	count(*) as num_of_movies
from movies
group by director;

-- Find the total domestic and international sales that can be attributed to each director
select
	m.director,
	sum(b.domestic_sales + b.international_sales) as Total_sales
	-- sum(b.international_sales) as total_international_sales
from movies m
inner join boxoffice b
on m.id = b.movie_id
group by m.director;