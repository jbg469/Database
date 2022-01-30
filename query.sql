SELECT c.first_name,c.last_name,a.line1,a.city,a.state,a.zip_code 
FROM customers c 
RIGHT JOIN addresses a ON c.first_name=a.first_name
ORDER BY a.zip_code ASC
