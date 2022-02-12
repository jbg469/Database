SELECT 
    p.product_name,
    o.card_number,
    LENGTH(o.card_number) AS card_number_length,
    RIGHT(o.card_number, 4) AS last_four_digits,
    CONCAT('XXXX-XXXX-XXXX-', RIGHT(o.card_number, 4)) as formatted_number,
FROM
    orders o
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON oi.product_id = p.product_id
ORDER BY p.product_name;
    
