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
