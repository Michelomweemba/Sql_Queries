SELECT * FROM payment


DELETE FROM payment 
WHERE payment_id IN (17064,17067)
RETURNING *

--Create table with first name and last name of customer and their total spendings
CREATE TABLE customer_spendings AS
SELECT first_name ||' '|| last_name  As name,
SUM (amount) As total_amount
FROM customer c
LEFT JOIN  payment p
ON c.customer_id = p.customer_id
GROUP BY  first_name ||' '|| last_name 
SELECT * FROM customer_spendings