SELECT c.email_address, count(o.order_id) AS order_count, sum(quantity*(item_price-discount_amount)) AS order_total
FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON oi.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC
