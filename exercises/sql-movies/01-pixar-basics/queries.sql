-- 🎬 Pixar Movies SQL Analysis Project

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    title TEXT NOT NULL,
    director TEXT NOT NULL,
    year INTEGER NOT NULL
);

INSERT INTO movies (title, director, year) VALUES
    ('Toy Story', 'John Lasseter', 1995),
    ('A Bug''s Life', 'John Lasseter', 1998),
    ('Toy Story 2', 'John Lasseter', 1999),
    ('Monsters, Inc.', 'Pete Docter', 2001),
    ('Finding Nemo', 'Andrew Stanton', 2003),
    ('The Incredibles', 'Brad Bird', 2004),
    ('Cars', 'John Lasseter', 2006),
    ('Ratatouille', 'Brad Bird', 2007),
    ('WALL-E', 'Andrew Stanton', 2008),
    ('Up', 'Pete Docter', 2009);

-- 1. Toy Story movies
SELECT *
FROM movies
WHERE title LIKE 'Toy Story%';

-- 2. Movies by John Lasseter
SELECT *
FROM movies
WHERE director = 'John Lasseter';

-- 3. Movies NOT by John Lasseter
SELECT *
FROM movies
WHERE director != 'John Lasseter';

-- 4. WALL-* movies
SELECT *
FROM movies
WHERE title LIKE 'WALL-%';

-- 5. Unique directors
SELECT DISTINCT director
FROM movies
ORDER BY director;

-- 6. Latest 4 movies
SELECT *
FROM movies
ORDER BY year DESC
LIMIT 4;

-- 7. First 5 movies alphabetically
SELECT *
FROM movies
ORDER BY title ASC
LIMIT 5;

-- 8. Next 5 movies alphabetically
SELECT *
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
