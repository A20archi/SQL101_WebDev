**DATABASE NORMAL FORMS**

**KEY REQUIREMENTS OF 1ST NORMAL FORM (1NF)**

1. Atomicity: All the values in a column should be atomic(indivisible).Each column must contain a single value,not a set of values.

2. Unique Columns Names: Each column must have a unique name to avoid confusion.

3. Uniqueness of Records: Each row must be unique and identifiable by a primary key.There should be no duplicate rows in the table.

4. Order Independence: The order of rows and columns should not matter.

5. No Repeating Groups: There should be no repeating groups or arrays in a table.Each piece of data should be stored in its own column.

eg 
```sql

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    products VARCHAR(255) -- This violates 1NF as it contains multiple values
    quantities VARCHAR(255) -- This also violates 1NF
)

INSERT INTO orders (customer_name, products, quantities) VALUES
('Alice', 'Product1, Product2', '2, 3'),-- Violates 1NF
('Bob', 'Product3', '1');

```

```sql

CREATE TABLE order_details(
    order_id INT,
    product_id INT,
    customer_name VARCHAR(100), --This depends on order_id and not product_id
    product_name VARCHAR(100), --This depends on product_id and not order_id
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);
-- This Table is in 1NF but not in 2NF
-- To convert it to 2NF we need to remove the partial dependency by creating separate tables for orders and products
```
```sql
    CREATE TABLE order_details(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    quantity INT,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

-- Now the order_details table is in 2NF as all non-key attributes are fully dependent on the primary key