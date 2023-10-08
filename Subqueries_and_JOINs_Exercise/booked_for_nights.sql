SELECT
	CONCAT(ap.address, ' ', ap.address_2) AS apartment_address,
	bk.booked_for AS nights
FROM
	apartments as ap
JOIN
	bookings as bk
USING
	(booking_id)
ORDER BY
	ap.apartment_id

