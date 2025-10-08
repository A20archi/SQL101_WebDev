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
(105, 'Keyboard', 6, 1),--order with non-existent customer

-- 1. Inner Join : This is the intersection of two tables based on a common column.
SELECT c.customer_name, o.product_name, o.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
-- on clause is used to specify the condition for the join.

--2. Left Join : This returns all records from the left table (customers), and the matched records from the right table (orders). If there is no match, NULL values are returned for columns from the right table.
SELECT c.customer_name, o.product_name, o.quantity  
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

--3.Right Join : This returns all records from the right table (orders), and the matched records from the left table (customers). If there is no match, NULL values are returned for columns from the left table.
SELECT c.customer_name, o.product_name, o.quantity
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

--4.Full Outer Join : This returns all records when there is a match in either left (customers) or right (orders) table. If there is no match, NULL values are returned for columns from the table without a match.
SELECT c.customer_name, o.product_name, o.quantity
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

```
**Cross Join** : This returns the Cartesian product of both tables, meaning it combines each row from the first table with every row from the second table. This type of join does not require a condition to join the tables.
```sql
SELECT c.customer_name, o.product_name
FROM customers c
CROSS JOIN orders o;
```