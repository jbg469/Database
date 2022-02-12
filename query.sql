SELECT card_number,length(card_number)as card_number,
right(card_number,4) as last_four_digits,
if((Length(card_number)-12=4),
CONCAT('XXXX-XXXX-XXXX-', right(card_number,Length(card_number)-12)),
CONCAT('XXXX-XXXX-XXXX-X', right(card_number,Length(card_number)-12)))
AS formatted_number
FROM orders 
ORDER BY card_number ASC;
