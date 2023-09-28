SELECT
	peak_name,
	SUBSTRING(peak_name,1,4) AS "Positive Left",
	LEFT(peak_name,-4) AS "Negative Left"
FROM
	peaks
