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