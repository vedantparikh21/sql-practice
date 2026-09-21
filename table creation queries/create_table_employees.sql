create table Employees (
 	Role Char(30),
	Name Char(30),
	Building Char(5),
	Years_employed INT
);

Insert Into Employees (role,name,building,years_employed) values
	('Engineer', 'Becky A.',   '1e', 4),
    ('Engineer', 'Dan B.',     '1e', 2),
    ('Engineer', 'Sharon F.',  '1e', 6),
    ('Engineer', 'Dan M.',     '1e', 4),
    ('Engineer', 'Malcom S.',  '1e', 1),
    ('Artist',   'Tylar S.',   '2w', 2),
    ('Artist',   'Sherman D.', '2w', 8),
    ('Artist',   'Jakob J.',   '2w', 6),
    ('Artist',   'Lillia A.',  '2w', 7),
    ('Artist',   'Brandon J.', '2w', 7),
    ('Manager',  'Scott K.',   '1e', 9),
    ('Manager',  'Shirlee M.', '1e', 3),
    ('Manager',  'Daria O.',   '2w', 6);