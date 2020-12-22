SELECT c.name, round(avg(sc.progress), 1)
FROM course c 
INNER JOIN studentCourse sc ON c.id = sc.courseId
GROUP BY c.name
ORDER BY 2 DESC, 1 asc;