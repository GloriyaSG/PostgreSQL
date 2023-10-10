SELECT
	an."name",
	at.animal_type,
	TO_CHAR (an.birthdate, 'DD.MM.YYYY') AS birthdate
FROM
	animals AS an
JOIN
	animal_types AS at
ON at.id = an.animal_type_id
ORDER BY
	an.name ASC



