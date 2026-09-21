-- 1. List all movies and their combined sales in millions of dollars
select
	m.id,
	m.title,
	(b.domestic_sales + b.international_sales)/1000000 as "Total Sales (millions)"
from
	movies m
left join boxoffice b
on b.movie_id = m.id;

-- 2. List all movies and their ratings in percent
select 
	m.title,
	b.rating*10 as percent_ratings
from movies m
join boxoffice b
on m.id = b.movie_id;

-- List all movies that were released on even number years
select
	title,
	year
from movies
where year%2 = 0;