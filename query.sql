SELECT email_address, order_id AS oldest_order_id, order_date AS oldest_order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE order_date = (SELECT  MIN(order_date)
FROM orders
WHERE customer_id = o.customer_id);
