SELECT c.email_address,
SUM(o.item_price * o.quantity) AS 'item_price_total',
SUM(o.discount_amount * o.quantity) AS 'discount_amount_total'
FROM customers AS c
JOIN order_items AS o ON c.customer_id = o.customer_id
GROUP BY email_address
ORDER BY item_price_total
