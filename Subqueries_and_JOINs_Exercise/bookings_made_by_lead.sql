SELECT
	bk.apartment_id,
	bk.booked_for,
	cs.first_name,
	cs.country
FROM
	bookings AS bk
INNER JOIN
	customers AS cs
USING
	(customer_id)
WHERE
	cs.job_title = 'Lead';