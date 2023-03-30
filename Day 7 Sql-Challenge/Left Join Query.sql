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
RIGHT(s.seat_no,1),Count(*)
FROM  seats s
INNER JOIN boarding_passes as b 
ON  b.seat_no = s.seat_no
GROUP BY RIGHT(s.seat_no,1)
ORDER BY count(*)

