SELECT
    list_price,
    CAST(list_price AS decimal(10, 1)) AS list_price_cast,
    CONVERT(decimal(10, 1), list_price) AS list_price_convert,
    CAST(list_price AS int) AS list_price_integer
FROM my_guitar_shop.products
