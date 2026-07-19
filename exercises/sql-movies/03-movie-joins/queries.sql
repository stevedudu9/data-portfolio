-- =========================================
-- 🎬 MOVIES JOIN SQL ANALYSIS PROJECT
-- =========================================

-- =========================================
-- 📌 1. CREATE TABLES
-- =========================================

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

-- Movies table: stores movie information
CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    year INTEGER NOT NULL,
    director_id INTEGER NOT NULL,
    FOREIGN KEY (director_id) REFERENCES directors (director_id)
);

-- Directors table: stores director details
CREATE TABLE directors (
    director_id INTEGER PRIMARY KEY,
    director_name TEXT NOT NULL
);

-- =========================================
-- 📥 2. INSERT DATA
-- =========================================

-- Insert directors
INSERT INTO directors (director_id, director_name) VALUES
(1, 'Christopher Nolan'),
(2, 'Greta Gerwig'),
(3, 'James Cameron'),
(4, 'Denis Villeneuve');

-- Insert movies
INSERT INTO movies (movie_id, title, year, director_id) VALUES
(1, 'Oppenheimer', 2023, 1),
(2, 'Barbie', 2023, 2),
(3, 'Avatar: The Way of Water', 2022, 3),
(4, 'Dune', 2021, 4),
(5, 'Dune: Part Two', 2024, 4);

-- =========================================
-- 🔍 3. VIEW ALL DATA
-- =========================================

-- View all movies
SELECT * FROM movies;

-- View all directors
SELECT * FROM directors;

-- =========================================
-- 🔗 4. BASIC JOIN
-- =========================================

-- Combine movies with their directors
SELECT m.title, d.director_name
FROM movies m
JOIN directors d
ON m.director_id = d.director_id;

-- =========================================
-- 📊 5. JOIN + GROUP BY
-- =========================================

-- Count number of movies per director
SELECT d.director_name, COUNT(*) AS total_movies
FROM movies m
JOIN directors d
ON m.director_id = d.director_id
GROUP BY d.director_name
ORDER BY total_movies DESC;

-- =========================================
-- 🎯 6. JOIN + WHERE
-- =========================================

-- Find movies released after 2022
SELECT m.title, d.director_name, m.year
FROM movies m
JOIN directors d
ON m.director_id = d.director_id
WHERE m.year > 2022;

-- =========================================
-- 📈 7. JOIN + ORDER BY
-- =========================================

-- Sort movies by release year (latest first)
SELECT m.title, d.director_name, m.year
FROM movies m
JOIN directors d
ON m.director_id = d.director_id
ORDER BY m.year DESC;

-- =========================================
-- 🏆 8. TOP 3 LATEST MOVIES
-- =========================================

-- Show the 3 most recent movies
SELECT m.title, d.director_name, m.year
FROM movies m
JOIN directors d
ON m.director_id = d.director_id
ORDER BY m.year DESC
LIMIT 3;
