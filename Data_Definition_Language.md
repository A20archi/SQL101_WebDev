**Data Definition Language (DDL)**

DDL is used to define and manage database objects like tables,indexes,views etc. DDL commands deal with the structure and schema of the database.

**Types of commands in DDL:**

1 **CREATE**:Creates a new database object like a table or index.

2.**ALTER**:Modifies the structure of an existing database object.(adds/removes columns,change rows etc)

3.**DROP**:Deletes an existing database object like a table or index.

4.**TRUNCATE**:Removes all rows from a table but keeps the structure intact.

5.**RENAME**:Changes the name of a database object.(eg table,column etc)

example:

```sql

-- Create a new table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE
);
-- Alter the table to add a new column
ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);
-- Drop the table
DROP TABLE Employees;
-- Truncate the table to remove all rows
TRUNCATE TABLE Employees;
-- Rename the column
ALTER TABLE Employees RENAME COLUMN Email TO ContactEmail;
```

