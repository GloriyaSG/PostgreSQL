CREATE VIEW view_addresses
AS
SELECT
	CONCAT(emp.first_name, ' ', emp.last_name) AS "Full Name",
	emp.department_id,
	CONCAT(adr.number, ' ', adr.street) AS "Address"
FROM
	employees AS emp
JOIN
	addresses AS adr
		ON
	emp.address_id = adr.id
ORDER BY
	"Address" ASC;