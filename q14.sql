SELECT s.firstname, s.lastname, 
(SELECT CASE  
    WHEN min(sc.progress) < 40 THEN 'F'
    WHEN min(sc.progress) < 50 THEN 'D'
    WHEN min(sc.progress) < 60 THEN 'C'
    WHEN min(sc.progress) < 70 THEN 'B'
    WHEN min(sc.progress) >= 70 THEN 'A'
    ELSE 'wrong' END),
(SELECT CASE  
    WHEN max(sc.progress) < 40 THEN 'F'
    WHEN max(sc.progress) < 50 THEN 'D'
    WHEN max(sc.progress) < 60 THEN 'C'
    WHEN max(sc.progress) < 70 THEN 'B'
    WHEN max(sc.progress) >= 70 THEN 'A'
    ELSE 'wrong' END)
FROM student s 
JOIN studentCourse sc 
ON s.id = sc.studentId
GROUP by s.id
ORDER by 3 desc, 4 desc, s.firstname asc, s.lastname asc;