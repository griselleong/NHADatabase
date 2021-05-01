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

### Using Joins: Inner Join - Query Data from two different tables
##### Inner Join merges the tables, and only selects if ON value exists in both tables
```
SELECT 
student.name AS student_name,
student.course,
teacher.name AS teacher_name
FROM student
INNER JOIN teacher
  ON student.course = teacher.course
```

### Using Joins: Inner Join with a WHERE clause for filtering
```
SELECT 
student.name AS student_name,
student.course,
teacher.name AS teacher_name
FROM student
INNER JOIN teacher
  ON student.course = teacher.course
WHERE
  student.name = 'Mickey Mouse'
```
### Using Joins: Inner Join - Query Data from three different tables
##### Inner Join merges the tables, and only selects if ON value exists in both tables
```
SELECT
  student.name AS student_name,
  teacher.name AS teacher_name,
  course.description AS course_description
FROM student
INNER JOIN teacher 
	on student.course = teacher.course
INNER JOIN course
	ON student.course = course.name
ORDER BY
	student.name DESC, teacher.name ASC
```
### Using Joins: Left Join - Query Data from two different tables
##### Left Join merges the tables, and all rows from the FROM table are selected even if the ON value does not exist on the second table
```
SELECT
  student.name AS student_name,
  teacher.name AS teacher_name,
  course.description AS course_description
FROM student
LEFT JOIN teacher 
	on student.course = teacher.course
```
### Using Joins: Left Join - Query Data from three different tables
##### Left Join merges the tables, and all rows from the FROM table are selected even if the ON value does not exist on the second table
```
SELECT
  student.name AS student_name,
  teacher.name AS teacher_name,
  course.description AS course_description
FROM student
LEFT JOIN teacher 
	on student.course = teacher.course
LEFT JOIN course
	ON student.course = course.name
 ```
