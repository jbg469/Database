SELECT  c.email_address,
COUNT(o.order_id) AS order_count,
SUM(item_price - discount_amount) * quantity) AS order_total
FROM customers AS c 
INNER JOIN orders AS o ON c.customer_id = o.customer_id
INNER JOIN order_items AS oi ON oi.order_id = o.order_id
GROUP BY c.customer_id HAVING count > 1
ORDER BY total_amount DESC;
