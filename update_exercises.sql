use codeup_test_db;

-- All albums in your table.

select name from albums;

-- All albums released before 1980

select name from albums where release_date < 1980;

-- All albums by Michael Jackson

select name from albums where artist = 'Michael Jackson';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';



update albums
set sales = sales * 10;

update albums
set release_date = 1800
where release_date < 1980;

select * from albums;





