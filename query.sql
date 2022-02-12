SELECT 
    p.product_name,
    o.card_number,
    LENGTH(o.card_number) AS card_number_length,
    RIGHT(o.card_number, 4) AS last_four_digits,
    CONCAT('XXXX-XXXX-XXXX-', RIGHT(o.card_number, 4)) as formatted_number,
    IF(LOCATE(' ',SUBSTRING(p.product_name,LOCATE(' ', p.product_name) + 1)) != 0,
        SUBSTRING_INDEX(SUBSTRING_INDEX(p.product_name, ' ', 3),' ',- 1),
        '')
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY card_number ASC;
    
