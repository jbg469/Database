ALTER TABLE products
ADD COLUMN
(
product_price DECIMAL(5,2) DEFAULT 9.99,
date_addedtodb DATETIME not null
)
