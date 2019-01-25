-- Explicit INNER JOIN

SELECT first_name,
       last_name,
       sum(amount) AS total_spent
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

-- LEFT JOIN

SELECT first_name,
       last_name,
       IFNULL(order_date, "No Order(s) placed.") AS order_date,
       IFNULL(sum(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

--RIGHT JOIN

SELECT *
FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;

-- ON DELETE CASCADE
