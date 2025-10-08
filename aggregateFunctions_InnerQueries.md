```sql

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    quantity INT not null
);
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'), --David has no orders
(5, 'Eve');  --Eve has no orders

--Insert orders data
INSERT INTO orders (order_id, product_name, customer_id, quantity) VALUES
(101, 'Laptop', 1, 1),
(102, 'Smartphone', 1, 2),
(103, 'Tablet', 2, 1),
(104, 'Monitor', NULL, 1),--order with no customer

SELECT customer_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders
where product_name = 'Laptop'
);
```

**SQL Aggregator Functions**

These functions perform a calculation on a set of values and return a single value. They are often used with the `GROUP BY` clause to group the result set by one or more columns.
```sql
SELECT customer_id, COUNT(*) as order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
-- Find the maximum quantity ordered by any customer
SELECT MAX(quantity) as max_quantity
FROM orders;

```

--Important Aggregate Functions:
```sql
SELECT COUNT(*) FROM orders; -- Count all orders
SELECT AVG(quantity) FROM orders; -- Average quantity ordered
SELECT SUM(quantity) FROM orders; -- Total quantity ordered
SELECT MIN(quantity) FROM orders; -- Minimum quantity ordered
SELECT MAX(quantity) FROM orders; -- Maximum quantity ordered
```