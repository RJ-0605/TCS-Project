DELIMITER $$

CREATE PROCEDURE update_customer_info (
    IN customer_email VARCHAR(100),
    IN new_address TEXT,
    IN new_phone VARCHAR(20)
)
BEGIN
    UPDATE customers
    SET address = new_address,
        phone = new_phone
    WHERE email = customer_email;
END$$

DELIMITER ;
