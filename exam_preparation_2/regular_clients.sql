SELECT
	cli.full_name,
	COUNT(car_id) AS count_of_cars,
	SUM(cou.bill) AS total_sum
FROM
	clients AS cli
JOIN
	courses AS cou
ON
	cli.id = cou.client_id
WHERE
	SUBSTRING(cli.full_name, 2, 1) = 'a'
GROUP BY
	cli.full_name
HAVING
	COUNT(car_id) > 1
ORDER BY
	cli.full_name;