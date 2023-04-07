--1
SELECT DISTINCT ship_country,ship_city FROM orders 
WHERE ship_city LIKE '%burg' 
--2
SELECT order_id,customer_id,freight,ship_country FROM orders
WHERE ship_country LIKE 'P%'
ORDER BY freight DESC
LIMIT 10

--3
SELECT last_name,home_phone FROM employees
WHERE region IS NULL


--4
SELECT country, count(*) FROM suppliers
group by country
order by count(*) DESC

--5
SELECT ship_country, SUM(freight) FROM orders
WHERE ship_region is NOT NULL
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC

--6
SELECT country FROM employees
INTERSECT
SELECT country from suppliers
INTERSECT
SELECT country from customers

--7
SELECT country FROM customers
INTERSECT
SELECT country from suppliers
EXCEPT
SELECT country from employees




