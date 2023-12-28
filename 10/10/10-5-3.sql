SELECT
    Students.StudentID,
    Students.StudentName,
    SUM(Grades.Score) AS TotalScore
FROM
    Grades
    INNER JOIN Students ON Grades.StudentID = Students.StudentID
GROUP BY
    Students.StudentID, Students.StudentName
ORDER BY
    TotalScore DESC; 
