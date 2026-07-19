-- Rebuild the sample table so this exercise is reproducible.
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    title TEXT NOT NULL,
    director TEXT NOT NULL,
    release_year INTEGER NOT NULL,
    box_office_millions REAL NOT NULL
);

INSERT INTO movies (title, director, release_year, box_office_millions) VALUES
    ('Dune', 'Denis Villeneuve', 2021, 402),
    ('Spider-Man: No Way Home', 'Jon Watts', 2021, 1921),
    ('Top Gun: Maverick', 'Joseph Kosinski', 2022, 1495),
    ('Oppenheimer', 'Christopher Nolan', 2023, 950),
    ('Barbie', 'Greta Gerwig', 2023, 1440),
    ('The Batman', 'Matt Reeves', 2022, 770),
    ('Everything Everywhere All at Once', 'Daniel Kwan', 2022, 143),
    ('Avatar: The Way of Water', 'James Cameron', 2022, 2320);

-- Rank movies by worldwide box office (USD millions).
SELECT title, director, release_year, box_office_millions
FROM movies
ORDER BY box_office_millions DESC;

-- Summarize average box office by director.
SELECT director, ROUND(AVG(box_office_millions), 1) AS avg_box_office_millions
FROM movies
GROUP BY director
ORDER BY avg_box_office_millions DESC;

-- Count titles represented by each director.
SELECT director, COUNT(*) AS total_movies
FROM movies
GROUP BY director
ORDER BY total_movies DESC, director;

-- Filter titles released after 2021.
SELECT title, release_year
FROM movies
WHERE release_year > 2021
ORDER BY release_year DESC, title;

-- Return the three highest-grossing titles.
SELECT title, box_office_millions
FROM movies
ORDER BY box_office_millions DESC
LIMIT 3;
