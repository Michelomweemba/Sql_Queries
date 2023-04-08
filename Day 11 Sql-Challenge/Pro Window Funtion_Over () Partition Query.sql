SELECT * FROM film

SELECT 
f.film_id,
title,
name as category,
length as length_of_movie,
ROUND(AVG(length) OVER (PARTITION BY name),2) as avg_length_of_movie
FROM film f
LEFT JOIN film_category fc
ON f.film_id=fc.film_id
LEFT JOIN category c
ON c.category_id = fc.category_id
ORDER BY 1