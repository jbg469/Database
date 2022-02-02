SELECT category_name, COUNT(product_id), MAX(list_price)
FROM categories 
JOIN products ON categories.category_id=products.category_id
GROUP BY category_name
ORDERY BY COUNT(product_ID) DESC;
