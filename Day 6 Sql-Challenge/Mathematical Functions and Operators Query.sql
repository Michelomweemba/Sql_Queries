SELECT 
film_id,
ROUND(rental_rate/replacement_cost * 100,2) As Percentage
FROM film
WHERE ROUND(rental_rate/replacement_cost * 100,2)< 4
ORDER BY 2 ASC