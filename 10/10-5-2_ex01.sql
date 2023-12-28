CREATE TABLE Students (
    StudentID VARCHAR(5) PRIMARY KEY,
    StudentName VARCHAR(50)
);


INSERT INTO Students (StudentID, StudentName)
VALUES
    ('S0001', '小王'),
    ('S0002', '小名'),
    ('S0003', '小玉'),
    ('S0004', '小華'),
    ('S0005', '小田'),
    ('S0006', '小五'),
    ('S0007', '小六'),
    ('S0008', '小巴'),
    ('S0009', '小小'),
    ('S0010', '小人');


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);


INSERT INTO Courses (CourseID, CourseName)
VALUES
    (1, '公民課'),
    (2, '歷史課'),
    (3, '物理課'),
    (4, '數學課'),
    (5, '英語課');


CREATE TABLE Grades (
    GradeID INT PRIMARY KEY IDENTITY(1,1),
    StudentID VARCHAR(5),
    CourseID INT,
    Score INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


INSERT INTO Grades (StudentID, CourseID, Score)
VALUES
    ('S0001', 1, 85),  
    ('S0001', 2, 92),  
    ('S0001', 3, 78),  
    ('S0001', 4, 89),  
    ('S0001', 5, 91),  

    ('S0002', 1, 55),  
    ('S0002', 2, 72), 
    ('S0002', 3, 58),  
    ('S0002', 4, 49),  
    ('S0002', 5, 96),  

	('S0003', 1, 95),  
    ('S0003', 2, 65), 
    ('S0003', 3, 48),  
    ('S0003', 4, 60),  
    ('S0003', 5, 76), 

	('S0004', 1, 85),  
    ('S0004', 2, 72), 
    ('S0004', 3, 68),  
    ('S0004', 4, 59),  
    ('S0004', 5, 86), 

	('S0005', 1, 50),  
    ('S0005', 2, 70), 
    ('S0005', 3, 60),  
    ('S0005', 4, 40),  
    ('S0005', 5, 90),
	
	('S0006', 1, 50),  
    ('S0006', 2, 80), 
    ('S0006', 3, 50),  
    ('S0006', 4, 50),  
    ('S0006', 5, 80),

	('S0007', 1, 55),  
    ('S0007', 2, 65), 
    ('S0007', 3, 75),  
    ('S0007', 4, 85),  
    ('S0007', 5, 70),

	('S0008', 1, 60),  
    ('S0008', 2, 80), 
    ('S0008', 3, 90),  
    ('S0008', 4, 90),  
    ('S0008', 5, 90),

	('S0009', 1, 60),  
    ('S0009', 2, 80), 
    ('S0009', 3, 70),  
    ('S0009', 4, 65),  
    ('S0009', 5, 80),

    ('S0010', 1, 90),  
    ('S0010', 2, 92),  
    ('S0010', 3, 76),  
    ('S0010', 4, 88), 
    ('S0010', 5, 85);  
