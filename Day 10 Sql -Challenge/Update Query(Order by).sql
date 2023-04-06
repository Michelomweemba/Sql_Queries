--Update all rental prices that are 0.99 to 1.99

UPDATE film
SET rental_rate = 1.99
WHERE rental_rate = 0.99

SELECT * FROM film
ORDER BY film_id