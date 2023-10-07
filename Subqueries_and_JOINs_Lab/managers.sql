SELECT
	emp.employee_id,
	CONCAT(emp.first_name, ' ', emp.last_name),
	dep.department_id,
	dep.name AS department_name
FROM
	employees AS emp
JOIN
	departments AS dep
ON
	emp.employee_id = dep.manager_id
ORDER BY
	emp.employee_id
LIMIT 5
