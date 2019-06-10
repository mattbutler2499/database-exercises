use codeup_test_db;

select * from albums;

alter table albums
add unique (name, artist);

describe albums;