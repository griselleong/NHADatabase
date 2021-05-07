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

