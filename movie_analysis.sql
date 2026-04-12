-- 🎬 Pixar Movies SQL Analysis Project

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
