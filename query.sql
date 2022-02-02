SET @category_ids = (SELECT GROUP_CONCAT(category_id) FROM categories WHERE category_name='drums' GROUP BY category_name);
UPDATE categories 
SET category_name = 'Woodwinds'
WHERE FIND_IN_SET(category_id, @category_ids)
