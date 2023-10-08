SELECT
	mc.country_code,
	mn.mountain_range,
	pk.peak_name,
	pk.elevation
FROM
	peaks as pk
JOIN
	mountains AS mn
ON mn.id = pk.mountain_id
JOIN
	mountains_countries AS mc
ON	mc.mountain_id = pk.mountain_id
WHERE
	pk.elevation > 2835
		AND
	mc.country_code = 'BG'
ORDER BY
	pk.elevation DESC

