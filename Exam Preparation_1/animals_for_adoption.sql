SELECT
	a."name",
	EXTRACT(YEAR FROM a.birthdate) AS birth_year,
	at.animal_type
FROM
	animals AS a
JOIN
	animal_types AS at
ON at.id = a.animal_type_id
WHERE
	at.id != 3
AND
	a.birthdate > '01/01/2017'
AND
	a.owner_id IS NULL
ORDER BY
	a.name ASC;
