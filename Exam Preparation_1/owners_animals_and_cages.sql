SELECT
	CONCAT(ow.name, ' - ', an.name) AS "Owners-Animals",
	ow.phone_number AS "Phone Number",
	ac.cage_id AS "Cage ID"
FROM
	animals AS an
JOIN owners AS ow
	ON ow.id = an.owner_id
JOIN animals_cages AS ac
	ON ac.animal_id = an.id
WHERE
	an.animal_type_id = 1
ORDER BY
	ow.name ASC,
	an.name DESC




