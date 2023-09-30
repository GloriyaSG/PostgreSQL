SELECT
	department_id,
	SUM(salary) AS "Total Salary"
FROM
	employees
GROUP BY
	department_id
HAVING
	salary < 4200
ORDER BY
	department_id