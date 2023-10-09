CREATE OR REPLACE FUNCTION fn_calculate_future_value (
	initial_sum INT,
	yearly_interest_rate DECIMAL,
	number_of_years INT
)
RETURNS NUMERIC
AS
$$
	DECLARE final_res NUMERIC;
	BEGIN
		SELECT
			initial_sum * ((1+yearly_interest_rate)^ number_of_years)
		INTO final_res;
		RETURN TRUNC(final_res, 4);
	END;
$$
LANGUAGE plpgsql;
