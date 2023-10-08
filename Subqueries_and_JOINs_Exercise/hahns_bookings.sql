SELECT
	COUNT(*)
FROM
	bookings
JOIN
	customers AS cs
USING
	(customer_id)
WHERE
	cs.last_name = 'Hahn'