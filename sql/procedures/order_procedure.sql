DELIMITER $$

CREATE PROCEDURE calculate_order_total (
    IN order_id INT
)
BEGIN
    DECLARE total DECIMAL(10, 2);

    SELECT SUM(quantity * price) INTO total
    FROM orders
    JOIN products ON orders.product_id = products.id
    WHERE orders.id = order_id;

    UPDATE orders SET total_amount = total WHERE id = order_id;
END$$

DELIMITER ;
