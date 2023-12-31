SELECT
	ap.country,
	COUNT(bk.booking_id) AS booking_count
FROM
	bookings AS bk
JOIN
	apartments AS ap
USING
	(apartment_id)
WHERE
	bk.booked_at > '2021-05-18 07:52:09.904+03'
		AND
	bk.booked_at < '2021-09-17 19:48:02.147+03'
GROUP BY
	country
ORDER BY
	booking_count DESC


