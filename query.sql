SELECT c.first_name,c.last_name,a.line1,a.city,a.state,a.zip_code 
FROM customers AS c 
RIGHT JOIN addresses AS a ON c.first_name=a.first_name
ORDER BY a.zip_code ASC
