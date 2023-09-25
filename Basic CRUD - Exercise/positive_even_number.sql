SELECT
	CONCAT(number, ' ', street) AS "Address",
	city_id
FROM
	addresses
WHERE
	city_id % 2 = 0
		AND
	city_id > 0
ORDER by
	city_id ASC;