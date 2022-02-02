SELECT * FROM (SELECT c.email_address,
COUNT(o.order_id) OVER (PARTITION BY c.customer_id) customer_orders,
oi.order_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN (SELECT o.customer_id,
SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM order_items oi
GROUP BY ()
) AS oi
ON o.order_id = oi.order_id
) c
WHERE c.customer_orders > 1
ORDER BY order_total DESC
