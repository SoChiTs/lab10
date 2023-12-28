SELECT TOP 3
    Students.StudentID,
    Students.StudentName,
    Grades.Score
FROM
    Grades
    INNER JOIN Students ON Grades.StudentID = Students.StudentID
WHERE
    Grades.CourseID = 1  
ORDER BY
    Grades.Score DESC;  
