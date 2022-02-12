SELECT 
    p.product_name,
    o.card_number,
    LENGTH(o.card_number) AS card_number_length,
    RIGHT(o.card_number, 4) AS last_four_digits,
    IF((Length(card_number)-12=4),
    CONCAT('XXXX-XXXX-XXXX-', right(card_number,Length(card_number)-12)),
    CONCAT('XXXX-XXXX-XXXX-X', right(card_number,Length(card_number)-12))) AS formatted_number
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY card_number ASC;
