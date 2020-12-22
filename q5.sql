SELECT c.name AS course_name, COUNT(s.studentid) AS number_of_students
FROM course c left JOIN studentCourse s ON c.id = s.courseId left JOIN facultyCourse f ON c.id = f.courseId
WHERE f.courseId IS null
GROUP BY c.name 
ORDER BY  number_of_students DESC, course_name ASC;
