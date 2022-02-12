CREATE VIEW order_item_products AS
SELECT o.order_id, order_date, tax_amount, ship_date, product_name, item_price, discount_amount, 
(item_price - discount_amount) AS final_price, quantity, ( quantity * (item_price - discount_amount) ) AS item_total 
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
