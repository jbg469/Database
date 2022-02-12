 CREATE PROCEDURE test()
 DECLARE count_products COUNTPRO;
 SELECT COUNT(product_id) INTO count_products 
 FROM products;
 IF count_products >=7 THEN 
 SELECT "The number of products is greater than or equal to 7" AS RESULT; 
 ELSE 
 SELECT 'The number of products is less than 7' AS RESULT;
