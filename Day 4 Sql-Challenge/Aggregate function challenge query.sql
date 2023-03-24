SELECT * FROM film

SELECT 
MIN (replacement_cost),max(replacement_cost), sum(replacement_cost),round(avg(replacement_cost),2)
FROM film

SELECT * FROM payment

SELECT 
staff_id,
SUM(amount),
COUNT(*)
FROM payment 
GROUP BY staff_id

SELECT 
staff_id,
Date(payment_date),
SUM(amount),
COUNT (*)
FROM payment 
WHERE amount> 0
GROUP BY staff_id,Date(payment_date)
ORDER BY Date(payment_date) ASC

