SELECT 
staff_id,
Date(payment_date),
SUM(amount),
COUNT (*)
FROM payment 
WHERE amount> 0
GROUP BY staff_id,Date(payment_date)
ORDER BY Date(payment_date) ASC

SELECT * FROM payment

SELECT 
customer_id,
Date(payment_date),
Avg(amount),
Count(*)
From payment
WHERE Date (payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
GROUP BY customer_id,Date(payment_date)
Having Count(*)>1
ORDER BY avg(amount) DESC

SELECT * FROM customer

SELECT 
LOWER(first_name) As first_name,
LOWER (last_name) As last_name,
LOWER (email) As email
FROM customer 
WHERE
LENGTH (first_name) > 10 OR 
LENGTH (last_name)> 10

SELECT * FROM customer

SELECT 
RIGHT (email,5),
RIGHT (LEFT (email ,26),1)
FROM customer

SELECT 
Left (email,1) ||'***' || '@sakilacustomer'|| LEFT(email,1) 
FROM customer

SELECT * FROM customer
SELECT 
email,
last_name
FROM customer

SELECT 
 upper (last_name)|| ','|| LEFT (email ,POSITION ('.' IN email)-1) 
email
FROM customer

SELECT
SUBSTRING ()



SELECT
EXTRACT (month from payment_date) AS month,
SUM (amount) AS total_payment_amount
from payment
GROUP BY Month
ORDER BY total_payment_amount DESC


