USE codeup_test_db;

-- The name of all albums by Pink Floyd

SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

select release_date from albums where name = 'sgt. pepper''s lonely hearts club band';

-- The genre for Nevermind

select genre from albums where name = 'Nevermind';

-- Which albums were released in the 1990s

select name from albums where release_date <=1999 && release_date >= 1990;

-- Which albums had less than 20 million certified sales

select name from albums where sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

select name from albums where genre = 'rock';

