SELECT 
fare_conditions,
count(*)
FROM boarding_passes
INNER JOIN seats on  boarding_passes.seat_no = seats.seat_no
GROUP BY fare_conditions


SELECT * FROM boarding_passes as b
FULL OUTER JOIN seats as t
ON b.seat_no = t.seat_no

SELECT
s.seat_no,
Count(*)
FROM boarding_passes as b
LEFT JOIN seats as s
ON  b.seat_no = s.seat_no
GROUP BY s.seat_no

