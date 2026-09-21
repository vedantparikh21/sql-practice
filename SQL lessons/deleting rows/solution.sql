-- This database is getting too big, lets remove all movies that were released before 2005.
delete from movies
where year < 2005;

-- Andrew Stanton has also left the studio, so please remove all movies directed by him.
delete from movies
where director = 'Andrew Stanton';