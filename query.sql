SELECT order_id, order_date,
DATE_ADD(Order_date, INTERVAL 2 DAY) AS approx_ship_date, ship_date, 
DATE_DIFF(ship_date,order_date) AS days_to_ship
FROM orders
WHERE month(order_date) = 3
and YEAR(order_date) = '2018'
