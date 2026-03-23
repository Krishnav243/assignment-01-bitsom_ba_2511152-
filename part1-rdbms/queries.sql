-- Q1
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- Q3
SELECT r.rep_name, COUNT(DISTINCT o.customer_id) AS customers_handled
FROM sales_reps r
JOIN orders o ON r.rep_id = o.rep_id
GROUP BY r.rep_name;

-- Q4
SELECT order_id, total_amount
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5
SELECT product_name
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id FROM order_items
);
