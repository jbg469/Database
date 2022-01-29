SELECT 
    order_id AS 'order_id',
    order_date AS 'order_date',
    ship_date AS 'ship_date'
FROM orders
WHERE ship_date IS NULL
ORDER BY order_id DESC
