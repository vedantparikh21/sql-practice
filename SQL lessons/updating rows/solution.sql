-- Q) The director for A Bug's Life is incorrect, it was actually directed by John Lasseter 
update movies
set director = 'John Lasseter'
where title = 'A Bug''s Life';

select * from movies;

-- -- Q) The year that Toy Story 2 was released is incorrect, it was actually released in 1999
update movies
set year = 1999
where title like 'Toy Story 2';
select * from movies;

-- Q) Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
update movies
set title = 'Toy Story 3',
    director = 'Lee Unkrich'
where title = 'Toy Story 8';
select * from movies;