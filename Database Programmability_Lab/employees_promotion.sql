CREATE OR REPLACE PROCEDURE sp_increase_salaries
    (department_name VARCHAR(50))
AS
$$
    BEGIN
        UPDATE employees
		SET salary = salary + (0.05 * salary)
		WHERE employees.department_id = (
			SELECT
				dep.department_id
			FROM
				departments AS dep
			WHERE dep.name = department_name
		);
	END;
$$
LANGUAGE plpgsql;

