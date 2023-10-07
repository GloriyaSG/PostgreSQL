SELECT
	tn.town_id,
	tn.name,
	ad.address_text
FROM
	towns AS tn
JOIN
	addresses AS ad
USING (town_id)
WHERE
	tn.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY
	ad.town_id,
	ad.address_id;