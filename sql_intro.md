SQL stands for Structured Query Language-its similar to the English language and it is used to put queries into the Database

SQL can be used mainly by web developers, database admins, and for data analysts

SQL terminologies -

1. Datum - Similar to Data -> Datum is a single entity and we store the entire necessary information 

2.Collection of Data is the Database --> need to be organized and Structured ( schema for that -> structure of Database)

Tables -> rows and columns of data --> record simply means a single row 

Relational Database Management System --> RDBMS--> RDBMS stands for **Relational Database Management System**. It’s the type of database system most commonly used in web development, including for SQL. Let me break it down clearly:

---

1️⃣ What it is**

An **RDBMS** is software that lets you **store, manage, and retrieve data** in a structured way using **tables** (rows and columns).

---

2️⃣ Key Components**

* **Tables:** Store data in rows (records) and columns (fields).
* **Primary Key:** A unique identifier for each row (like `id`).
* **Foreign Key:** A column that links one table to another.
* **SQL:** The language used to interact with RDBMS (insert, update, query, delete).

---

3️⃣ Examples**

* **PostgreSQL**
* **MySQL / MariaDB**
* **SQLite**
* **Oracle Database**
* **Microsoft SQL Server**

---

4️⃣ Why it’s important for webdev**

* Stores user data, posts, products, orders, etc.
* Supports **relationships** between data (e.g., users ↔ posts).
* Works well with **backends** like Node.js/Express, Next.js, Django, etc.

---

 5️⃣ Quick visual analogy

Think of an RDBMS as **an Excel spreadsheet on steroids**:

* Each **table** = a sheet
* Each **row** = a record
* Each **column** = a property of that record
* SQL lets you **query, filter, and manipulate** the data easily

---

relational dtabases (examples - SQLite,PostgreSQL,MySQL)
-->imagine excel sheets
-->tables-->connections between tables

each table brings their own keywords and features

**Relational Databases - In Detail**
Relational databases are a type of database that organizes data into tables, which consist of rows and columns. Each table represents a specific entity or concept, and the relationships between these tables are established through keys.

**Key Concepts of Relational Databases:**

1. **Tables**: Data is stored in tables, where each table has a unique name and consists of rows (records) and columns (fields). Each column represents a specific attribute of the entity, while each row represents a single instance of that entity.

2. **Primary Key**: A primary key is a unique identifier for each record in a table. It ensures that each row can be uniquely identified and helps maintain data integrity.

3. **Foreign Key**: A foreign key is a column in one table that refers to the primary key of another table. It establishes a relationship between the two tables, allowing for data to be linked and queried across them.

4. **Relationships**: Relationships between tables can be one-to-one, one-to-many, or many-to-many. These relationships are defined using primary and foreign keys.

5. **Normalization**: Normalization is the process of organizing data in a relational database to reduce redundancy and improve data integrity. It involves dividing large tables into smaller, related tables and defining relationships between them.

---

## 📊 SQL vs NoSQL

| Feature            | SQL (Relational DB) 🗄️                   | NoSQL (Non-relational DB) 📂                              |
| ------------------ | ---------------------------------------- | --------------------------------------------------------- |
| **Data Model**     | Tables (rows & columns)                  | Documents, Key-Value, Graph, Column-based                 |
| **Schema**         | Fixed, predefined schema                 | Flexible / schema-less                                    |
| **Relationships**  | Strong (joins, foreign keys)             | Weak / handled at app level                               |
| **Consistency**    | ACID (Strong consistency)                | BASE (Eventual consistency, mostly)                       |
| **Scalability**    | Vertical (scale up: bigger server)       | Horizontal (scale out: sharding across many servers)      |
| **Best For**       | Structured data, transactions, analytics | Unstructured / semi-structured data, fast changing schema |
| **Query Language** | SQL (powerful, standardized)             | Database-specific APIs (e.g. MongoDB queries in JSON)     |
| **Use Cases**      | Banking, ERP, E-commerce, HR systems     | Social media, IoT, real-time chat, content storage        |

---

👉 **Rule of thumb:**

* If you need **relationships & consistency → SQL**.
* If you need **flexibility & scalability → NoSQL**.

---

Challenges in SQL to learn CRUD operations 

Question 1 : Ypu have been approached by a client who runs a small chai store and wants to set up a simple database to manage their local chai offerings. The Client has provied the following requirements:

Database Setup:

**Create a database named "ChaiStoreDB".**

Chai Table:

create a table named chai_store with the following columns:

id: A unique identifier for each chai (auto incrementing)
chai_name: The name of the chai (e.g., Masala Chai, Ginger Chai)
price: The price of the chai (decimal)
chai_type:Type of chai(e.g., Black, Green, Herbal)
available : Boolean Value indicating if the chai is currently available


**Solution:**

```sql

CREATE TABLE chai_store(
id        	SERIAL PRIMARY KEY,
chai_name 	VARCHAR(50),
price     	DECIMAL(5,2),
chai_type 	VARCHAR(50),
available 	BOOLEAN
);

```

Initial Data Insertion:

The client provides a list of their Chai offerings and wants you to insert the following data :

Masala Chai - ₹30 - Spiced - Available
Green Chai - ₹25 - Herbal - Available
Black Chai - ₹20 - Classic - Available
Iced Chai - ₹35 - Cold - Not Available
Oolong Chai - ₹40 - Specialty - Available

**Solution:**

```sql
INSERT INTO chai_store (chai_name, price, chai_type, available) VALUES
('Masala Chai', 30.00, 'Spiced', TRUE),
('Green Chai', 25.00, 'Herbal', TRUE),
('Black Chai', 20.00, 'Classic', TRUE),
('Iced Chai', 35.00, 'Cold', FALSE),
('Oolong Chai', 40.00, 'Specialty', TRUE);
```

Data Queries:

The client needs some reports:

-Display all chai names and prices , using column aliases like "Chai Name" and "Cost in INR"
-Find all chai varietites that have the word "Chai" in their name 
-List all Chai vaarieties that cost less than ₹30
-Show all chai varieties sorted by price from highest to lowest

**Solution:**

```sql
-- Display all chai names and prices with column aliases
SELECT chai_name AS "Chai Name", price AS "Cost in INR" FROM chai_store;
-- Find all chai varieties that have the word "Chai" in their name
SELECT * FROM chai_store WHERE chai_name LIKE '%Chai%';
-- List all Chai varieties that cost less than ₹30
SELECT * FROM chai_store WHERE price < 30.00;
-- Show all chai varieties sorted by price from highest to lowest
SELECT * FROM chai_store ORDER BY price DESC;
```

**Data Update**:
The client wants to make some changes:
-Update the price of "Iced Chai" to ₹38 and mark it as available

**Data Deletion**:

The client decides to discontinue "Black Chai" and wants it removed from the database

**Solution:**

```sql

UPDATE chai_store 
SET price = 38.0,available = TRUE
WHERE chai_name = 'Iced Chai'

SELECT * from chai_store

DELETE FROM chai_store
WHERE chai_name = 'Black Chai';

SELECT * from chai_store
```

