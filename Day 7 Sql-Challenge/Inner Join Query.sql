SELECT 
fare_conditions,
count(*)
FROM boarding_passes
INNER JOIN seats on  boarding_passes.seat_no = seats.seat_no
GROUP BY fare_conditions

