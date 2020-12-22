SELECT startDate, COUNT(distinct studentid) AS Students 
FROM studentcourse WHERE MONTH(startDate) <> 01
GROUP BY startDate
ORDER BY startDate ASC, Students asc;