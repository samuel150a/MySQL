CREATE TABLE olympics_info (
    olympic_id INT,
    year INT,
    host_city VARCHAR(30),
    host_country VARCHAR(30),
    total_sports INT,
    total_athletes INT,
    participating_countries INT,
    event_type ENUM('summer', 'winter'),
    opening_date DATE,
    closing_date DATE
);

DESC olympics_info;

ALTER TABLE olympics_info ADD CONSTRAINT olympic_id_unique UNIQUE(olympic_id);

ALTER TABLE olympics_info MODIFY COLUMN host_city VARCHAR(30) NOT NULL;
ALTER TABLE olympics_info MODIFY COLUMN total_athletes INT NOT NULL;
ALTER TABLE olympics_info ADD CONSTRAINT min_athletes CHECK(total_athletes > 500);
ALTER TABLE olympics_info ADD CONSTRAINT min_countries CHECK(participating_countries > 10);

INSERT INTO olympics_info VALUES
(1, 2000, 'Sydney', 'Australia', 28, 10651, 199, 'summer', '2000-09-15', '2000-10-01'),
(2, 2004, 'Athens', 'Greece', 28, 10500, 201, 'summer', '2004-08-13', '2004-08-29'),
(3, 2008, 'Beijing', 'China', 28, 11028, 204, 'summer', '2008-08-08', '2008-08-24'),
(4, 2012, 'London', 'United Kingdom', 26, 10568, 204, 'summer', '2012-07-27', '2012-08-12'),
(5, 2016, 'Rio de Janeiro', 'Brazil', 28, 11238, 207, 'summer', '2016-08-05', '2016-08-21'),
(6, 2020, 'Tokyo', 'Japan', 33, 11500, 206, 'summer', '2021-07-23', '2021-08-08'),
(7, 2002, 'Salt Lake City', 'USA', 15, 2399, 78, 'winter', '2002-02-08', '2002-02-24'),
(8, 2006, 'Turin', 'Italy', 15, 2508, 80, 'winter', '2006-02-10', '2006-02-26'),
(9, 2010, 'Vancouver', 'Canada', 15, 2563, 82, 'winter', '2010-02-12', '2010-02-28'),
(10, 2014, 'Sochi', 'Russia', 15, 2851, 88, 'winter', '2014-02-07', '2014-02-23'),
(11, 2018, 'Pyeongchang', 'South Korea', 15, 2920, 92, 'winter', '2018-02-09', '2018-02-25'),
(12, 2022, 'Beijing', 'China', 15, 2871, 91, 'winter', '2022-02-04', '2022-02-20'),
(13, 1998, 'Nagano', 'Japan', 14, 2176, 72, 'winter', '1998-02-07', '1998-02-22'),
(14, 1994, 'Lillehammer', 'Norway', 12, 1737, 67, 'winter', '1994-02-12', '1994-02-27'),
(15, 1992, 'Barcelona', 'Spain', 25, 9356, 169, 'summer', '1992-07-25', '1992-08-09');

ALTER TABLE olympics_info ADD COLUMN broadcasting_available BOOLEAN;
ALTER TABLE olympics_info ADD COLUMN first_year_participated INT;

UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 1;
UPDATE olympics_info SET first_year_participated = 1896 WHERE olympic_id = 1;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 2;
UPDATE olympics_info SET first_year_participated = 1904 WHERE olympic_id = 2;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 3;
UPDATE olympics_info SET first_year_participated = 1912 WHERE olympic_id = 3;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 4;
UPDATE olympics_info SET first_year_participated = 1924 WHERE olympic_id = 4;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 5;
UPDATE olympics_info SET first_year_participated = 1936 WHERE olympic_id = 5;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 6;
UPDATE olympics_info SET first_year_participated = 1948 WHERE olympic_id = 6;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 7;
UPDATE olympics_info SET first_year_participated = 1956 WHERE olympic_id = 7;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 8;
UPDATE olympics_info SET first_year_participated = 1964 WHERE olympic_id = 8;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 9;
UPDATE olympics_info SET first_year_participated = 1972 WHERE olympic_id = 9;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 10;
UPDATE olympics_info SET first_year_participated = 1980 WHERE olympic_id = 10;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 11;
UPDATE olympics_info SET first_year_participated = 1988 WHERE olympic_id = 11;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 12;
UPDATE olympics_info SET first_year_participated = 1992 WHERE olympic_id = 12;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 13;
UPDATE olympics_info SET first_year_participated = 1998 WHERE olympic_id = 13;
UPDATE olympics_info SET broadcasting_available = TRUE WHERE olympic_id = 14;
UPDATE olympics_info SET first_year_participated = 2002 WHERE olympic_id = 14;
UPDATE olympics_info SET broadcasting_available = FALSE WHERE olympic_id = 15;
UPDATE olympics_info SET first_year_participated = 2006 WHERE olympic_id = 15;