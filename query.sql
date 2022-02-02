SELECT c.email_address,
COUNT(o.order_id) AS order_count,
SUM(o.item_price - o.discount_amount) * COUNT(o.order_id) AS 
FROM customers AS c
JOIN orders AS ord ON c.customer_id = ord.customer_id
JOIN order_items AS o ON o.order_id = ord.order_id
GROUP BY c.customer_id
HAVING order_count > 1
ORDER BY order_total DESC;
