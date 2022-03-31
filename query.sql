CREATE PROCEDURE test(
OUT message VARCHAR(60))
BEGIN
DECLARE productCount DECIMAL DEFAULT 0;
SELECT COUNT(*)
INTO productCount
FROM products;
IF productCount >= 7 THEN
SET message = 'The number of products is greater than or equal to 7';
ELSE
SET message = 'The number of products is less than 7';
END IF;
END;
