SELECT  c.email_address,
COUNT(oi.order_id) AS count,
SUM(oi.item_price - oi.discount_amount) * COUNT(oi.order_id) AS total_amount
FROM customers AS c 
INNER JOIN orders AS o ON c.customer_id = o.customer_id
INNER JOIN order_items AS oi ON oi.order_id = o.order_id
GROUP BY c.customer_id HAVING count > 1
ORDER BY total_amount DESC;
