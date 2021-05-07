CREATE TABLE Student (
 id INTEGER PRIMARY KEY,
 first_name VARCHAR,
 last_name VARCHAR
);

CREATE TABLE Teacher (
 id INTEGER PRIMARY KEY,
 name VARCHAR,
 course_id INTEGER
);

CREATE TABLE Course (
 id INTEGER PRIMARY KEY,
 name VARCHAR,
 description VARCHAR 
);

INSERT INTO Course ('name','description')
VALUES 
('HTML', 'Learn about basic web development'),
('Javascript','Learn to make interactions on the web'),
('Python','Learn another language besides Javascript'),
('Database','Learn about data - coolest class ever!'),
('Startup 101','Learn about building your own startup');

INSERT INTO Teacher ('name','course_id')
VALUES
('Laura',2),
('Laura',3),
('Griselle',4),
('Ricky',5);

INSERT INTO Student (first_name, last_name)
VALUES
('Minnie','Mouse'),
('Mickey','Mouse'),
('Donald','Duck'),
('Daisy','Duck'),
('Peter','Pan'),
('Mulan', 'Fa'),
('Simba', 'Lion')
