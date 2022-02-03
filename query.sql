SELECT DISTINCT c.email_address, count(o.order_id) AS order_count, sum(quantity*(item_price-discount_amount)) AS order_total
FROM customers c
    INNER JOIN orders o
        ON c.customer_id = o.customer_id
    INNER JOIN order_items oi
        ON oi.order_id = o.order_id
GROUP BY email_address
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC
