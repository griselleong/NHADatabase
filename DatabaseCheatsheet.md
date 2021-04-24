## Resources

- SQL Lite Database Sandbox: https://sqliteonline.com/
- HackerRank SQL Practice: https://www.hackerrank.com/domains/sql
- W3 Schools: https://www.w3schools.com/sql/

## Query CheatSheet

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

### Add a Column to a Table
```
ALTER TABLE student
ADD COLUMN email VARCHAR
```
