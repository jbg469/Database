CREATE PROCEDURE insert_category(IN result VARCHAR(400))
BEGIN
 INSERT INTO categories (category_name)
 VALUES (result);
END
