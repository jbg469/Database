CREATE VIEW customer_addresses  AS
SELECT c.customer_id, email_address, first_name, last_name, 
city AS bill_city,line2 AS bill_line2, state AS bill_state,line1 AS bill_line1
zip_code AS bill_zip, line1 AS ship_line1,line2 AS ship_line2, city AS ship_city, state AS ship_state,
zip_code AS ship_zip
FROM customers c 
JOIN addresses a ON 
c.customer_id = a.customer_id
WHERE a.address_id = c.billing_address_id 
