SELECT product_name,list_price, product_id
FROM products 
WHERE list_price > ( 
  SELECT AVG(list_price) 
  FROM products) 
ORDER BY list_price DESC;
