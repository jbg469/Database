SELECT product_name, discount_percent, list_price
FROM products
WHERE discount_percent NOT IN (SELECT discount_percent
  FROM products
  GROUP BY discount_percent
  HAVING COUNT(discount_percent) > 1)
ORDER BY product_name
