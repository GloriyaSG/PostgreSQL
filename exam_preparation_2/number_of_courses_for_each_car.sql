SELECT
 	car.id AS car_id,
	car.make,
	COUNT(cou.id) AS count_of_courses,
	ROUND(AVG(cou.bill),2) AS average_bill
FROM
	cars AS car
LEFT JOIN
	courses AS cou
ON  cou.car_id = car.id
GROUP BY
	car.id
HAVING COUNT(cou.id) != 2
ORDER BY
	count_of_courses DESC,
	car.id ASC;




