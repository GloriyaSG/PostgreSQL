SELECT
	ap.name,
	SUM(bk.booked_for)
FROM
	apartments AS ap
JOIN
	bookings AS bk
USING
	(apartment_id)
GROUP BY
	ap.name
ORDER BY
	ap.name ASC




