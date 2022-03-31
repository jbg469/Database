CREATE FUNCTION discount_price(item_id INT)
returns DECIMAL(10,2)
BEGIN
  DECLARE discount_price DECIMAL(10,2);
  SELECT (oi.item_price - oi.discount_amount) INTO discount_price
  FROM order_items AS oi
  where oi.item_id = item_id;
  return discount_price;

END
