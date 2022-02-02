SELECT c.email_address,
SUM(c.item_price * o.quantity) AS 'item_price_total',
SUM(c.discount_amount * o.quantity) AS 'discount_amount_total'
FROM customers AS c
JOIN order_items AS o ON c.id = o.customer_id
GROUP BY email_address
ORDER BY item_price_total
