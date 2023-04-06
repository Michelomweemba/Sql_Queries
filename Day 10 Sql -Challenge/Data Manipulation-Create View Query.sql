SELECT * FROM payment


DELETE FROM payment 
WHERE payment_id IN (17064,17067)
RETURNING *

--Create table with first name and last name of customer and their total spendings
CREATE VIEW customer_spendings AS
SELECT first_name ||' '|| last_name  As name,
SUM (amount) As total_amount
FROM customer c
LEFT JOIN  payment p
ON c.customer_id = p.customer_id
GROUP BY  first_name ||' '|| last_name 

SELECT * FROM customer_spendings

DROP TABLE customer_spendings
--Create a view called films_category that shows a list of the film titles including their title, 
--length and category name ordered descendingly by the length.
--Filter the results to only the movies in the category 'Action' and 'Comedy'
CREATE VIEW films_category
AS
SELECT title,name,length FROM film f
LEFT JOIN film_category fc
ON f.film_id=fc.film_id
LEFT JOIN category c
ON c.category_id=fc.category_id
WHERE name IN ('Action','Comedy')
ORDER BY length DESC

SELECT * FROM film_category
