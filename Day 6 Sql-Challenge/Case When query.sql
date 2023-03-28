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

