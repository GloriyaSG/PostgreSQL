SELECT
	ow."name",
	COUNT(an) AS count_of_animals
FROM
	owners AS ow
JOIN
	animals AS an
ON an.owner_id = ow.id
GROUP BY
	ow."name"
ORDER BY
	count_of_animals DESC,
	ow.name ASC
LIMIT 5


