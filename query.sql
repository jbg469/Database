SELECT 
    date_added,
    CAST(date_added as date) AS added_date,
    CAST(date_added AS CHAR (7)) added_char7,
    CAST(date_added AS TIME) AS added_time
FROM products
ORDER BY date_added ASC
