SELECT  c.email_address, count(DISTINCT o.order_id) AS order_count, sum(quantity*(item_price-discount_amount)) AS order_total
FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON oi.order_id = o.order_id
WHERE item_price > 400
GROUP BY email_address
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY order_count DESC
