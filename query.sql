SELECT 
    card_number,
    LENGTH(card_number) AS card_number_length,
    RIGHT(card_number, 4) AS last_four_digits,
    IF (LENGHT(card_number)-12=4)
        CONCAT('XXXX-XXXX-XXXX-', right(card_number,LENGTH(card_number)-12)) AS formatted_number
    ELSE
        CONCAT('XXXX-XXXX-XXXX-X', right(card_number,LENGHT(card_number)-12))) AS formatted_number)
FROM orders
ORDER BY card_number ASC;
