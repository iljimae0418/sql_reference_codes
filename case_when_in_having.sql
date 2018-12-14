SELECT 
Student AS 'Student', 
YearInSchool AS 'Year in School', 
GradeType AS 'Grade Type', 
AVG(Grade) AS 'Average Grade' 
FROM Grades 
WHERE 
GradeType = 'Quiz'
GROUP BY 
Student, YearInSchool, GradeType 
HAVING 
AVG(Grade) >= 
CASE 
WHEN YearInSchool = 7 THEN 70 
WHEN YearInSchool = 8 THEN 75 
ELSE 80 
END 
ORDER BY 
Student 
