SELECT first_name, last_name, addy.line1, addy.city, addy.state, addy.zip_code
FROM customers
INNER JOIN addresses AS addy ON customer_id = addy.customer_id
WHERE email_address = 'allan.sherwood@yahoo.com'
ORDER BY addy.zip_code ASC
