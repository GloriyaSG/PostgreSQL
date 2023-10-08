SELECT
	ap."name",
	ap.country,
	bk.booked_at::date
FROM
	apartments as ap
LEFT OUTER JOIN
	bookings as bk
USING
	(booking_id)
LIMIT 10


