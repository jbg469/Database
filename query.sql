CREATE PROCEDURE test()
BEGIN
       DECLARE countp int;
 SELECT count(product_id) into countp FROM products;
 if countp >= 7 THEN 

    SELECT "The number of products is greater than or equal to 7" AS result;
 ELSE
    SELECT "The number of products is less than 7" AS result;
    END IF;
END
