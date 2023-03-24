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