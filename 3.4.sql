SELECT 
    product_name AS 'product_name',
    list_price AS 'list_price',
    discount_percent AS 'discoun_tpercent',
    ROUND(list_price * (discount_percent / 100), 2) AS 'discount_amount',
    ROUND(list_price - list_price * (discount_percent / 100),
            2) AS 'discount_price'
FROM
    products
ORDER BY (list_price - list_price * (discount_percent / 100)) DESC
LIMIT 5;
