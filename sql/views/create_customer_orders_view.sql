CREATE VIEW customer_orders AS
SELECT
    customers.name AS customer_name,
    orders.id AS order_id,
    orders.total_amount,
    orders.order_date
FROM customers
JOIN orders ON customers.id = orders.customer_id;
