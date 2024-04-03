CREATE OR REPLACE PROCEDURE simple_procedure(value VARCHAR)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO simple_table (value, created_at) VALUES (:1, CURRENT_TIMESTAMP());
    RETURN 'Insert successful';
END;
$$