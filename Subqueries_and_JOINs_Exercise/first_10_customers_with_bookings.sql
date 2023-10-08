SELECT
	bk.booking_id,
	bk.starts_at::date,
	bk.apartment_id,
	CONCAT(first_name, ' ', last_name) AS customer_name
FROM
	bookings AS bk
RIGHT JOIN
	customers AS cs
USING
	(customer_id)
ORDER BY
	customer_name
LIMIT 10