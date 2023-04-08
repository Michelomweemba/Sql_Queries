SELECT * FROM flights
--Write aquery that returns the running total of how latthe flights are 
--difference between actual_arrival and scheduled arrival ordered by 
--flights_id including the departure airport
SELECT 
flight_id,
departure_airport,
SUM (actual_arrival-scheduled_arrival) OVER(ORDER BY flight_id )
FROM flights

--As a second query,calculate the same running total but partition also by the 
--departure airport

SELECT 
flight_id,
departure_airport,
SUM (actual_arrival-scheduled_arrival) OVER(PARTITION BY departure_airport ORDER BY flight_id )
FROM flights








