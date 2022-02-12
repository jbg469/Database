CREATE VIEW best_products AS 
SELECT COUNT(it.order_id) AS order_count, product_name,
SUM((item_price - discount_amount) * quantity) AS order_total
FROM orders ord JOIN order_items it ON ord.order_id = it.order_id
JOIN products p ON it.product_id = p.product_id
GROUP BY product_name
ORDER BY order_total DESC LIMIT 5;
