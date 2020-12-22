SELECT f.firstname, f.lastname, round(avg(sc.progress), 1)
FROM faculty f JOIN facultyCourse fc ON f.id = fc.facultyId JOIN course c ON fc.courseId = c.id INNER JOIN studentCourse sc ON c.id = sc.courseId
GROUP BY f.firstname, f.lastname
HAVING avg(sc.progress) >= 62.90
ORDER BY round(avg(sc.progress), 1) desc, f.firstname asc, f.lastname asc;