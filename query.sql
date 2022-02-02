SELECT

   c.email_address,

   COUNT(DISTINCT o.order_id) AS order_count,

   COALESCE(SUM(oi.quantity * (oi.item_price - oi.discount_amount)), 0) AS order_total

FROM customers c

LEFT JOIN orders o

   ON c.customer_id = o.customer_id

INNER JOIN order_items oi

   ON o.order_id = oi.order_id

GROUP BY

   c.customer_id,

   c.email_address;
