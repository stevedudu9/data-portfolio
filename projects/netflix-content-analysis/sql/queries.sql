-- =========================================
-- 📺 NETFLIX SQL ANALYSIS PROJECT
-- =========================================

-- =========================================
-- 1. VIEW SAMPLE DATA
-- =========================================
-- Check if dataset is loaded correctly

SELECT *
FROM netflix_titles
LIMIT 5;

-- =========================================
-- 2. CHECK TABLE STRUCTURE (DEBUG)
-- =========================================

PRAGMA table_info(netflix_titles);

-- =========================================
-- 3. COUNT MOVIES VS TV SHOWS
-- =========================================

SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

-- =========================================
-- 4. TOP 10 COUNTRIES (ALL CONTENT)
-- =========================================

SELECT country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- =========================================
-- 5. RELEASE YEAR TREND
-- =========================================

SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;

-- =========================================
-- 6. MOST COMMON RATINGS
-- =========================================

SELECT rating, COUNT(*) AS total
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total DESC;

-- =========================================
-- 7. TOP 10 GENRES / CATEGORIES
-- =========================================

SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- =========================================
-- 8. TOP DIRECTORS
-- =========================================

SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- =========================================
-- 9. LATEST TITLES
-- =========================================

SELECT title, release_year
FROM netflix_titles
ORDER BY release_year DESC
LIMIT 10;

-- =========================================
-- 10. MOVIES ONLY
-- =========================================

SELECT title, release_year, rating
FROM netflix_titles
WHERE type = 'Movie'
LIMIT 10;

-- =========================================
-- 11. TV SHOWS ONLY
-- =========================================

SELECT title, release_year, duration
FROM netflix_titles
WHERE type = 'TV Show'
LIMIT 10;

-- =========================================
-- 12. CONTENT AFTER 2020
-- =========================================

SELECT title, release_year
FROM netflix_titles
WHERE release_year > 2020
ORDER BY release_year DESC;

-- =========================================
-- 13. MOVIE RATINGS DISTRIBUTION
-- =========================================

SELECT rating, COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie'
GROUP BY rating
ORDER BY total_movies DESC;

-- =========================================
-- 14. LONGEST MOVIES
-- =========================================

SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
  AND duration LIKE '% min'
ORDER BY CAST(duration AS INTEGER) DESC
LIMIT 10;

-- =========================================
-- 15. TV SHOWS WITH SEASONS
-- =========================================

SELECT title, duration
FROM netflix_titles
WHERE type = 'TV Show'
AND duration LIKE '%Season%'
LIMIT 20;

-- =========================================
-- 16. CONTENT FROM UNITED STATES
-- =========================================

SELECT title, type, release_year
FROM netflix_titles
WHERE country LIKE '%United States%'
LIMIT 20;

-- =========================================
-- 17. AVERAGE RELEASE YEAR BY TYPE
-- =========================================

SELECT type, AVG(release_year) AS avg_release_year
FROM netflix_titles
GROUP BY type;

-- =========================================
-- 18. TOP COUNTRIES (MOVIES ONLY)
-- =========================================

SELECT country, COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie'
AND country IS NOT NULL
GROUP BY country
ORDER BY total_movies DESC
LIMIT 10;

-- =========================================
-- 19. TOP COUNTRIES (TV SHOWS ONLY)
-- =========================================

SELECT country, COUNT(*) AS total_tvshows
FROM netflix_titles
WHERE type = 'TV Show'
AND country IS NOT NULL
GROUP BY country
ORDER BY total_tvshows DESC
LIMIT 10;

-- =========================================
-- 20. TV SHOW RATINGS
-- =========================================

SELECT rating, COUNT(*) AS total
FROM netflix_titles
WHERE type = 'TV Show'
GROUP BY rating
ORDER BY total DESC;

-- =========================================
-- 21. DIRECTORS WITH MORE THAN 5 TITLES
-- =========================================

SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
HAVING COUNT(*) > 5
ORDER BY total_titles DESC;
