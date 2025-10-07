DCL commands deal with granting and revoking privileges on the database.

**Types of commands in DCL:**

1. **GRANT**: Gives specific privileges to users or roles on database objects like tables, views, or procedures.

2. **REVOKE**: Removes specific privileges from users or roles on database objects.

**Example:**

```sql

GRANT SELECT ON products TO hitesh;

GRANT INSERT, UPDATE ON orders TO hitesh;

REVOKE SELECT ON products FROM hitesh;

REVOKE INSERT, UPDATE ON orders FROM hitesh;

```

**Note**: DCL commands are often used in conjunction with DDL and DML commands to manage database security and access control.
```


