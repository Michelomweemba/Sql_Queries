
SELECT
flight_no,
CAST(REPLACE(flight_no, 'PG','') As Int)
FROM flights