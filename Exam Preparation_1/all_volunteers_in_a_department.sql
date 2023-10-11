CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(
	searched_volunteers_department VARCHAR(30)
)
RETURNS INT AS
$$
	DECLARE res INT;
	BEGIN
		SELECT
			COUNT(*)
		FROM
			volunteers_departments AS vd
		JOIN
			volunteers ON
				volunteers.department_id = vd.id
		WHERE vd.department_name = searched_volunteers_department
	INTO res;
	RETURN res;
END;
$$
LANGUAGE plpgsql;

