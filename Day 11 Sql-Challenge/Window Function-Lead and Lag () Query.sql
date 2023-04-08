SELECT * FROM payment

SELECT 
SUM(amount),
DATE(payment_date) as day,
LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) as previous_day,
SUM (amount) -LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) as difference
FROM payment
GROUP BY DATE(payment_date)