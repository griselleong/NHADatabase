## Resources

- SQL Lite Database Sandbox: https://sqliteonline.com/
- HackerRank SQL Practice: https://www.hackerrank.com/domains/sql
- W3 Schools: https://www.w3schools.com/sql/

## SQL Query CheatSheet

### Create Table
```
CREATE TABLE student (
  name VARCHAR,
  course VARCHAR
)
```

### Add Values to Table
```
INSERT INTO student
VALUES
('John', 'Databases'),
('Susan', 'Databases'),
('Jane', 'Python'),
('Mike', 'Python')
```

### Retrieve back ALL columns and row values in a Table
```
SELECT * FROM student
```

### Retrieve back specific Column in a Table
```
SELECT name FROM student
```

### Add a Column to a Table
```
ALTER TABLE student
ADD COLUMN email VARCHAR
```

### Update the Value of ALL rows for a specific Column in a Table
```
UPDATE TABLE student
SET email = 'myemail@website.com'
```

### Update the Value of ALL rows for a specific Column in a Table
```
UPDATE TABLE student
SET email = 'jane@website.com'
WHERE name = 'Jane'
```
