SELECT email_address, 
COUNT(o.order_id) AS order_count,
SUM((item_price - discount_amount) * quantity) AS order_total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP by c.customer_id
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC
