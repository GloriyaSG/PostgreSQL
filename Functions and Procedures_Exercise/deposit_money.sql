CREATE OR REPLACE PROCEDURE sp_deposit_money(
	account_id INT,
	money_ammount NUMERIC(20,4)
	)
AS
$$
	BEGIN
		UPDATE accounts
			SET balance = balance + money_ammount
			WHERE account_id = id;
	END;
$$
LANGUAGE plpgsql;

