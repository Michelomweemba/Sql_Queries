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

   
   
 SELECT first_name ,email
 FROM customer 
 WHERE customer_id IN 
(SELECT customer_id FROM payment
 GROUP BY customer_id
 HAVING SUM(amount) > 30)
 
 --What is the average total amount spent per day(average daily revenue)
 
 SELECT 
 ROUND(Avg(amount_per_day),2) daily_rev_avg
 FROM
 (SELECT
 SUM(amount) amount_per_day,
 DATE(payment_date)
 FROM payment
  GROUP BY DATE(payment_date)) A
 
   