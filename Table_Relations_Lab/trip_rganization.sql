SELECT
	ve.driver_id,
	ve.vehicle_type,
	CONCAT(camp.first_name, ' ', camp.last_name) AS driver_name
FROM
	campers AS camp
JOIN
	vehicles AS ve
ON ve.driver_id = camp.id;