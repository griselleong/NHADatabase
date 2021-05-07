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

CREATE TABLE StudentCourseHistory (
  student_id INTEGER,
  course_id INTEGER,
  school_year INTEGER,
  semester VARCHAR 
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
('Griselle', 1),
('Laura', 2),
('Laura', 3),
('Griselle', 4),
('Ricky', 5);

INSERT INTO Student (first_name, last_name)
VALUES
('Minnie', 'Mouse'),
('Mickey', 'Mouse'),
('Donald', 'Duck'),
('Daisy', 'Duck'),
('Peter', 'Pan'),
('Mulan', 'Fa'),
('Simba', 'Lion')

insert into StudentCourseHistory (student_id, course_id, school_year, semester)
vALUES 
(1, 1, 2018, 'FALL'),
(1, 2, 2019, 'SPRING'),
(1, 3, 2019, 'FALL'),
(1, 4, 2020, 'SPRING'),
(1, 5, 2020, 'FALL'),

(2, 1, 2018, 'FALL'),
(2, 2, 2019, 'FALL'),
(2, 3, 2019, 'FALL'),
(2, 5, 2020, 'SPRING'),

(3, 1, 2018, 'FALL'),
(3, 2, 2019, 'SPRING'),
(3, 3, 2019, 'FALL'),
(3, 5, 2020, 'FALL'),

(4, 1, 2020, 'FALL'),
(4, 2, 2019, 'FALL'),
(4, 3, 2020, 'SPRING'),
(4, 4, 2018, 'SPRING'),
(4, 5, 2018, 'FALL'),

(5, 2, 2019, 'SPRING'),
(5, 3, 2020, 'FALL'),
(5, 4, 2020, 'SPRING'),

(6, 1, 2020, 'FALL'),
(6, 2, 2020, 'SPRING'),
(6, 3, 2019, 'FALL'),
(6, 4, 2019, 'SPRING'),
(6, 5, 2018, 'FALL'),

(7, 1, 2020, 'FALL'),
(7, 2, 2018, 'SPRING'),
(7, 3, 2019, 'FALL'),
(7, 4, 2019, 'FALL'),
(7, 5, 2019, 'FALL')
