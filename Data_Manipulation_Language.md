DML - Data Manipulation Language -> commands that deal with the manipulation of data inside the database tables. DML commands are used to retrieve, insert, update, and delete data.

**Types of commands in DML:**
1. **SELECT**: Retrieves data from one or more tables.
2. **INSERT**: Adds new rows of data to a table.
3. **UPDATE**: Modifies existing data within a table.
4. **DELETE**: Removes rows of data from a table.

**Example:**

```sql
-- Select data from a table
SELECT * FROM Employees;

-- Insert a new row into a table
INSERT INTO Employees (FirstName, LastName, HireDate)
VALUES ('John', 'Doe', '2023-01-01');           

-- Update an existing row in a table
UPDATE Employees
SET LastName = 'Smith'
WHERE EmployeeID = 1;

-- Delete a row from a table
DELETE FROM Employees
WHERE EmployeeID = 1;