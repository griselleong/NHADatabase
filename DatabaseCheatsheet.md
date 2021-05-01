## Resources

- SQL Lite Database Sandbox: https://sqliteonline.com/
- HackerRank SQL Practice: https://www.hackerrank.com/domains/sql
- W3 Schools: https://www.w3schools.com/sql/

## SQL Query CheatSheet

### CREATE: Create Table
```
CREATE TABLE student (
  name VARCHAR,
  course VARCHAR
)
```

### INSERT INTO: Add Values to Table
```
INSERT INTO student
VALUES
('John', 'Databases'),
('Susan', 'Databases'),
('Jane', 'Python'),
('Mike', 'Python')
```

### SELECT: Retrieve back ALL columns and row values in a Table
```
SELECT * FROM student
```

### SELECT: Retrieve back specific Column in a Table
```
SELECT name FROM student
```

### AS: Give a column an alias
```
SELECT
  name AS student_name,
  course AS course_taking
FROM student
```

### ALTER TABLE + ADD COLUMN: Add a Column to a Table
```
ALTER TABLE student
ADD COLUMN email VARCHAR
```

### UPDATE TABLE + SET: Update the Value of ALL rows for a specific Column in a Table
```
UPDATE TABLE student
SET email = 'myemail@website.com'
```

### UPDATE TABLE + SET + WHERE: Update the Value of ALL rows for a specific Column in a Table
```
UPDATE TABLE student
SET email = 'jane@website.com'
WHERE name = 'Jane'
```

### INNER JOIN ON: Merge Data from two different tables
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

### INNER JOIN ON: Merge Data with a WHERE clause for filtering
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
### INNER JOIN ON: Merge Data from three different tables
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
### LEFT JOIN ON: Merge Data from two different tables
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
### LEFT JOIN ON: Merge Data from three different tables
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
 
## ORDER BY: Ordering results selected
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
ORDER BY
  student.name DESC, 
  teacher.name ASC
```

### CASE...WHEN..END: Replacing result values you select based on original value
```
SELECT
  student.name AS student_name,
   CASE 
      WHEN teacher.name is NULL THEN 'No Teacher!'
      WHEN teacher.name = 'Laura' THEN 'Awesome teacher'
      ELSE teacher.name 
  END
  AS teacher_name,
  course.description AS course_description
FROM student
LEFT JOIN teacher 
	on student.course = teacher.course
LEFT JOIN course
	ON student.course = course.name
```

### WHERE IN: Filtering where value exists in a list
```
SELECT * 
FROM student
WHERE
  name in ('Mickey Mouse', 'Minnie Mouse', 'Donald Duck')
```

### WHERE + BETWEEN: Filtering where value exists between two values
```
SELECT * FROM student
WHERE 
  age BETWEEN 10 AND 15
```

### INNER/LEFT JOIN + BETWEEN: Merge Data based on one value being between two other values
```
SELECT
  name as student_name,
  ageGroup.description as age_group_description
FROM student
INNER JOIN ageGroup
  on student.age BETWEEN ageGroup.min_age AND ageGroup.max_age
```
