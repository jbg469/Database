SELECT 
    list_price,
    FORMAT(list_price, 1) AS price_format,
    CONVERT(list_price , UNSIGNED) AS price_convert, 
    CAST(list_price AS UNSIGNED) AS price_cast   
FROM products
ORDER BY list_price ASC
