SELECT email_address, MAX(order_total) as max_order_total,MIN(order_id) as min_order_id  
FROM( SELECT email_address, order_items.order_id, SUM((item_price-discount_amount)*quantity) as order_total 
  FROM customers INNER JOIN orders
    ON customers.customer_id=orders.customer_id
    INNER JOIN order_items
    ON orders.order_id=order_items.order_id
  GROUP BY email_address,order_items.order_id
)v
GROUP BY email_address
ORDER BY max_order_total DESC
