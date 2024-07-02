DELIMITER $$
CREATE PROCEDURE print_pattern()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 20 DO
        SET @stars = REPEAT('* ',i);
        SELECT @stars;
        SET i = i+1;
    END WHILE;

END$$
DELIMITER ;

CALL print_pattern()