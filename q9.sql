SELECT s.firstname, s.lastname, round(AVG(sc.progress), 1)
FROM student s join studentCourse sc ON s.id = sc.studentId
GROUP BY s.firstname, s.lastname
HAVING avg(sc.progress)  < 50
ORDER BY round(AVG(sc.progress), 1) DESC, s.firstname asc, s.lastname asc;