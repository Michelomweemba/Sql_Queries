SELECT * FROM information_schema.role_table_grants
WHERE grantee='postgres'

SELECT * FROM film
WHERE length > (SELECT avg(length) FROM film)

SELECT * FROM film
WHERE film_id IN
(SELECT film_id FROM inventory
 WHERE store_id=2
 GROUP BY film_id
 HAVING COUNT(*)>3)
 
 SELECT first_name , last_name
  FROM customer 
  WHERE customer_id IN 
  (SELECT customer_id FROM payment
   WHERE DATE(payment_date)= '2020-01-25')