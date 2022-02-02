SELECT email_address,
SUM(item_price * quantity) AS item_price_total
SUM(discount_amount * quantity) AS discount_amount_total
FROM customers AS c
JOIN order_items AS o ON c.id = o.customer_id
GROUP BY email_address
ORDER BY item_price_total
