SELECT c.category_name, COUNT(p.category_id) AS product_count, MAX(p.list_price) AS most_expensive_product
FROM categories c, products p
WHERE p.category_id=c.category_id
GROUP BY c.category_name ORDER BY COUNT(*) DESC
