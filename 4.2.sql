SELECT customers.first_name, customers.last_name, addresses.line1, addresses.city, addresses.state, addresses.zip_code
FROM customers
INNER JOIN addresses ON customers.customer_id = addresses.customer_id
WHERE email_address = 'allan.sherwood@yahoo.com'
ORDER BY addresses.zip_code ASC
