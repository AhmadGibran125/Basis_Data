SELECT c.customer_id,c.name,o.order_id,o.order_date,p.product_id,p.name,p.price
FROM orders o
JOIN customers c on o.customer_id = c.customer_id
JOIN products p on o.product_id = p.product_id
WHERE p.price > 100000 && o.order_date BETWEEN '2025-11-05' AND '2025-11-12'
ORDER by p.price DESC;

Output
+-------------+----------------+----------+------------+------------+---------------------+-----------+
| customer_id | name           | order_id | order_date | product_id | name                | price     |
+-------------+----------------+----------+------------+------------+---------------------+-----------+
|           6 | Lina Marlina   |        6 | 2025-11-06 |          6 | Keyboard Mechanical | 300000.00 |
|          11 | Galih Prasetyo |       11 | 2025-11-11 |         11 | Power Bank          | 150000.00 |
+-------------+----------------+----------+------------+------------+---------------------+-----------+
