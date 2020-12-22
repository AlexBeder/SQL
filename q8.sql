SELECT s.firstname, s.lastname, COUNT(c.name) AS number_of_corses
FROM student s join studentCourse sc ON s.id = sc.studentId JOIN course c ON sc.courseId = c.Id
WHERE s.majorId = c.deptId
GROUP BY s.firstname, s.lastname
ORDER BY number_of_corses DESC, s.firstname asc, s.lastname asc;