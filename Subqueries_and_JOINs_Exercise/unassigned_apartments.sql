SELECT
	bk.booking_id,
	bk.apartment_id,
	cs.companion_full_name
FROM
	bookings AS bk
JOIN
	customers AS cs
USING
	(customer_id)
WHERE
	bk.apartment_id IS NULL