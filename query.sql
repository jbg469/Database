CREATE PROCEDURE test()
BEGIN
  DECLARE i              INT DEFAULT 1;
  DECLARE number_1_var   INT DEFAULT 10;
  DECLARE number_2_var   INT DEFAULT 20;
  DECLARE message_var    VARCHAR(400);
  SET message_var = CONCAT('Common factors of 10 and 20:');
  WHILE ((i <= number_1_var))DO
    IF ((number_1_var % b = 0) AND (number_2_var % b = 0)) THEN
      SET message_var = CONCAT(message_var," ", b);
      END IF;
    SET b = b + 1;
  END WHILE;
  SELECT message_var AS message;
  END
