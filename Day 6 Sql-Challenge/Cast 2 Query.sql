SELECT 
COALESCE(CAST(actual_arrival-scheduled_arrival As Varchar),'not arrived')
from flights

SELECT
CAST(ticket_no As bigint)
FROM tickets