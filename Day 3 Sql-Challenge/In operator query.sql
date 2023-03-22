SELECT * FROM PAYMENT

SELECT 
COUNT (*)
FROM PAYMENT 
WHERE customer_id = 100

SELECT * FROM customer

SELECT 
first_name,
last_name
FROM CUSTOMER 
WHERE first_name = 'ERICA'

SELECT * FROM rental

SELECT 
COUNT (*)
FROM RENTAL
WHERE RETURN_DATE IS NULL

SELECT * FROM PAYMENT

select 
payment_id,
amount
FROM payment where amount <= 2

SELECT 
*
FROM payment
where (customer_id = 322 OR customer_id = 346 OR customer_id = 354)

AND 
(amount < 2 OR amount > 10)
ORDER BY customer_id ASC,amount DESC

SELECT * FROM PAYMENT

SELECT 
COUNT (*) FROM PAYMENT
WHERE amount BETWEEN 1.99 AND 3.99
AND payment_date BETWEEN '2020.01.26' AND '2020.01.28'

SELECT * FROM PAYMENT

SELECT 
* FROM PAYMENT
WHERE customer_id IN (12,25,67,93,124,234)
AND amount IN (4.99,7.99,9.99)
AND payment_date between '01.01.2020' AND '01.02.2020'