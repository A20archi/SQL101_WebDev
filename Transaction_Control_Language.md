**Transaction Control Language (TCL)**

TCL commands deal with transaction management in the database. Transactions ensure that a series of DML statements are executed successfully or not at all, maintaining data integrity.(atomicity)

**BEGIN**: Marks the start of a transaction.
**COMMIT**: Saves all changes made during the transaction to the database.
**ROLLBACK**: Undoes all changes made during the transaction if an error occurs 

example:

```sql
-- Start a transaction
BEGIN;
INSERT INTO products(name,price,stock)
VALUES('Laptop',80000.00,10);
UPDATE inventory SET stock=stock-10
WHERE name = 'Laptop';
-- If everything is fine, commit the transaction
COMMIT;
 
Example of ROLLBACK:

-- Start a transaction
BEGIN;
--create a savepoint1
SAVEPOINT savepoint1;
-- perform some operations
INSERT INTO products(name,price,stock)
VALUES('Smartphone',50000.00,20);
--create a savepoint2
SAVEPOINT savepoint2;
-- perform some more operations
UPDATE inventory SET stock=stock-20
WHERE name = 'Smartphone';
-- If an error occurs, rollback to the last savepoint
ROLLBACK TO SAVEPOINT savepoint2;

