SELECT COUNT(distinct studentid) AS Students, YEAR(startDate) AS 'Year'
FROM studentcourse
GROUP BY YEAR(startDate)
ORDER BY YEAR(startDate) ASC;
