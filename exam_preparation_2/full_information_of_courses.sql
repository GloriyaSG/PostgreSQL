SELECT
	a.name,
	CASE
		WHEN EXTRACT(HOUR FROM cou.start) BETWEEN 6 AND 20 THEN 'Day'
		ELSE 'Night'
	END AS day_time,
	cou.bill,
	cl.full_name,
	cr.make,
	cr.model,
	cat.name AS category_name
FROM
	courses AS cou
JOIN
	clients AS cl
ON
	cou.client_id = cl.id
JOIN
	cars AS cr
ON
	cr.id = cou.car_id
JOIN
	categories AS cat
ON
	cr.category_id = cat.id
JOIN
	addresses AS a
ON
	cou.from_address_id = a.id
ORDER BY
	cou.id ASC;