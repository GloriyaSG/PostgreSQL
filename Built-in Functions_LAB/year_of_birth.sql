SELECT
	first_name,
	last_name,
	EXTRACT(born, 'YYYY') AS year
FROM
	authors