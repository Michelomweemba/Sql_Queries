SELECT 
COUNT(*) As flights,
CASE
WHEN actual_departure is null THEN 'No departure'
WHEN actual_departure - scheduled_departure < '00:05' THEN 'On time'
WHEN actual_departure - scheduled_departure < '01:00' THEN 'late'
ELSE 'very late'
END As is_late
FROM flights
GROUP BY is_late

SELECT 
COUNT(*) as flights,
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT (month from scheduled_departure) <= 5 THEN 'Spring'
WHEN EXTRACT (month from scheduled_departure) <= 8 THEN 'Summer'
ELSE 'Fall' 
END as season
FROM flights
GROUP BY season

SELECT * FROM bookings

SELECT
COUNT(*) As tickets,
CASE
WHEN total_amount < 20000 THEN 'low price ticket'
WHEN total_amount < 150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END as ticket_price
FROM bookings
GROUP BY ticket_price


SELECT
title,
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END as tier_list
FROM films
WHERE 
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END is not null


