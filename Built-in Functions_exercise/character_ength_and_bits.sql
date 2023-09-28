SELECT
	CONCAT(moun.mountain_range, ' ', peak.peak_name) AS "Mountain Information",
	CHAR_LENGTH(CONCAT(moun.mountain_range, ' ', peak.peak_name)) AS "Characters Length",
	BIT_LENGTH(CONCAT(moun.mountain_range, ' ', peak.peak_name)) AS "Bits of a String"
FROM
	mountains AS moun,
	peaks AS peak
WHERE
	moun.id = peak.mountain_id



