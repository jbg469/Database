SELECT c.category_name, p.product_name, p.list_price
FROM categories AS categories
INNER JOIN products AS p ON categories.category_id = p.category_id
ORDER BY categories.category_name, p.product_name ASC
