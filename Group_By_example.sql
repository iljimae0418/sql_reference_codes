/* Grade 테이블에서 GradeType에 근거하여 점수를 분석, 다시말해 quizzes 와 homework 의 두 그룹으로 나누고싶다. 
이 예제에서 GROUP BY는 그룹들이 GradeType 열의 값에 근거해 만들어져야한다는 점을 명시한다. */ 
SELECT 
GradeType AS 'Grade Type' 
AVG(Grade) AS 'Average Grade' 
FROM Grades 
GROUP BY GradeType 
ORDER BY GradeType 

