SELECT
	bk.booking_id,
	ap.name AS apartment_owner,
	ap.apartment_id,
	CONCAT(cs.first_name, ' ', cs.last_name) AS customer_name
FROM
	bookings as bk
FULL JOIN
	apartments AS ap
USING
	(booking_id)
FULL JOIN
	customers AS cs
USING
	(customer_id)
ORDER BY
	bk.booking_id ASC,
	apartment_owner ASC,
	customer_name ASC;