CREATE OR REPLACE FUNCTION fn_full_name(
	first_name VARCHAR,
	last_name VARCHAR)
RETURNS VARCHAR
AS
$$
	DECLARE result_final VARCHAR;
	BEGIN
		SELECT
			INITCAP(CONCAT(first_name, ' ', last_name))
		INTO result_final;
		RETURN result_final;
	END;
$$
LANGUAGE plpgsql;