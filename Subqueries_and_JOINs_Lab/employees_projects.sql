SELECT
	emp.employee_id,
	CONCAT(emp.first_name, ' ', emp.last_name) AS full_name,
	emp_p.project_id,
	p.name
FROM
	employees AS emp
JOIN
	employees_projects AS emp_p
ON
	emp.employee_id = emp_p.employee_id
JOIN
	projects AS p
ON
	emp_p.project_id = p.project_id
WHERE
	emp_p.project_id = 1;