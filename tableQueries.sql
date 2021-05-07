CREATE TABLE Student (
 id INTEGER PRIMARY KEY,
 first_name VARCHAR,
 last_name VARCHAR,
 current_course_id INTEGER
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
('Startup 101','Learn about building your own startup')
