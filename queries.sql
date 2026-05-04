-- 1. Total books sold per title
SELECT b.title, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN books b ON od.book_id = b.book_id
GROUP BY b.title;

-- 2. Total revenue per book
SELECT b.title, SUM(b.price * od.quantity) AS revenue
FROM books b
JOIN order_details od ON b.book_id = od.book_id
GROUP BY b.title;

-- 3. Top customers by spending
SELECT c.name, SUM(b.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 4. Most popular author
SELECT a.name, SUM(od.quantity) AS books_sold
FROM authors a
JOIN books b ON a.author_id = b.author_id
JOIN order_details od ON b.book_id = od.book_id
GROUP BY a.name
ORDER BY books_sold DESC;

-- 5. Customers with more than 1 order
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;

-- 6. Average order value
SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT o.order_id, SUM(b.price * od.quantity) AS order_total
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN books b ON od.book_id = b.book_id
    GROUP BY o.order_id
) sub;
