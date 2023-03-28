SELECT
rental_date,
COALESCE( CAST( return_date As VARCHAR),'not returned')
FROM rental
ORDER BY rental_date DESC