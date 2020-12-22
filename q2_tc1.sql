SELECT d.name AS course_name, count(c.name) AS number_of_corses
FROM department d left JOIN course c ON d.id = c.deptId
GROUP BY d.name 
ORDER BY  number_of_corses ASC;
