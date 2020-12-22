SELECT f.firstname, f.lastname, round(avg(sc.progress), 1)
FROM faculty f inner join facultyCourse fc ON f.id = fc.facultyId INNER JOIN course c ON fc.courseId = c.id INNER JOIN studentCourse sc ON c.id = sc.courseId
GROUP BY f.firstname, f.lastname
ORDER BY round(avg(sc.progress), 1) desc, f.firstname asc, f.lastname asc;