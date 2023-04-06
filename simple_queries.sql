SELECT contact_name, country FROM customers
SELECT order_id, order_date - shipped_date as DIFF FROM orders
SELECT DISTINCT city FROM customers
SELECT COUNT(*) FROM orders
SELECT COUNT(DISTINCT ship_country) FROM orders
