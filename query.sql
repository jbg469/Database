SELECT first_name,last_name, line1,city,state,zip_code
FROM customers
INNER JOIN addresses ON customer_id = customer_id
WHERE email_address = 'allan.sherwood@yahoo.com'
ORDER BY zip_code ASC
