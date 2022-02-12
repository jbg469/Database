CREATE VIEW product_summary AS 
SELECT COUNT(i.order_id) AS order_count, product_name,
SUM(((item_price - discount_amount) * quantity)) AS order_total
FROM orders o JOIN order_items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
GROUP BY product_name
