SELECT email_address,
COUNT(orders.order_id) AS order_amount,
(SUM(item_price)-SUM(discount_amount)*SUM(quantity)) AS order_total
FROM customers
JOIN orders
ON 
customers.customer_id=orders.customer_id
JOIN order_items
ON
orders.order_id= order_iterms.order_id
GROUP BY email_address
HAVING COUNT(orders.order_id) >1
ORDER BY SUM(item_price) DESC
