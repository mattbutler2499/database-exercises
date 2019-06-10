USE codeup_test_db;



CREATE TABLE movies (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(100) NOT NULL,
                        time_in_minutes INT NOT NULL,
                        description TEXT NOT NULL
);

describe movies;


