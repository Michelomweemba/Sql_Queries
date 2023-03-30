
SELECT first_name,last_name,phone,district
FROM customer as c
RIGHT OUTER JOIN address as a
ON c.address_id = a.address_id
WHERE district = 'Texas'

