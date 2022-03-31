CREATE PROCEDURE test()
BEGIN
DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
BEGIN
DECLARE EXIT HANDLER FOR 1062
SET duplicate_entry_for_key = TRUE;
INSERT INTO categories VALUES (default, 'Guitars');
SELECT '1 row was inserted.' AS message;
END;
IF duplicate_entry_for_key = TRUE THEN
SELECT 'Row was not inserted - duplicate entry.' AS message;
END IF;
END
