SELECT c.email_address, count(*) AS order_count, sum(quantity*(item_price-discount_amount)) AS order_total
FROM order_items oi
    JOIN orders o
        ON oi.order_id = o.order_id
    JOIN customers c
        ON o.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING order_count >2
ORDER BY order_total DESC;
