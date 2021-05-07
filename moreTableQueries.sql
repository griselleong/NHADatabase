SELECT school_year, count(*) 
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
GROUP BY school_year

SELECT school_year, semester, count(*) 
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
GROUP BY school_year, semester

SELECT STUDENT_ID, s.first_name, s.last_name, count(*) 
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
GROUP BY STUDENT_ID
ORDER BY COUNT(*),

SELECT course_id, c.name, count(*) 
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
GROUP BY course_id
ORDER BY COUNT(*)

SELECT c.name, school_year, semester, count(*)
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
WHERE last_name = 'Duck'
group by c.name, school_year, semester

SELECT s.first_name, c.name, school_year, semester, count(*)
FROM StudentCourseHistory sch
INNER JOIN Student s ON s.id = sch.student_id
INNER JOIN Course c ON c.id = sch.course_id
group by s.first_name, c.name, school_year, semester
ORDER BY first_name

/*
- First student alphabetical by first name
- Last student alphabetical by first name
- List of classes that Simba took
- List of classes that the Ducks took
- List of classes that the Mouses took
- List of year + number of students that took classes
- List of year + semester + number of students that took classes
- List of student + number of classes they took
- Year where students took the most classes
- Did anyone retake any classes?
- Did anyone take more than one class per semester?
*/
