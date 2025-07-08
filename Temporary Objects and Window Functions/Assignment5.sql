-- 1) Write a SQL query to determine the top 5 students in each college with the highest GPA in their college from 2010 to 2020. 
WITH StudentGPA AS (
    SELECT 
        c.CollegeName,
        s.StudentFname AS FirstName,
        s.StudentLname AS LastName,
        SUM(co.Credits * cl.Grade) / SUM(co.Credits) AS GPA,
        RANK() OVER (PARTITION BY c.CollegeName ORDER BY SUM(co.Credits * cl.Grade) / SUM(co.Credits) DESC) AS GPA_Rank
    FROM tblSTUDENT s
    JOIN tblCLASS_LIST cl ON s.StudentID = cl.StudentID
    JOIN tblCLASS cls ON cl.ClassID = cls.ClassID
    JOIN tblCOURSE co ON cls.CourseID = co.CourseID
    JOIN tblQUARTER q ON cls.QuarterID = q.QuarterID
    JOIN tblDEPARTMENT d ON co.DeptID = d.DeptID
    JOIN tblCOLLEGE c ON d.CollegeID = c.CollegeID
    WHERE cls.[YEAR] BETWEEN 2010 AND 2020
    GROUP BY c.CollegeName, s.StudentID, s.StudentFname, s.StudentLname
)
SELECT 
    CollegeName,
    FirstName,
    LastName,
    ROUND(GPA, 2) AS GPA,
    GPA_Rank
FROM StudentGPA
WHERE GPA_Rank <= 5
ORDER BY CollegeName, GPA_Rank;


-- 2)  Write a SQL query to return student first name, last name, course name, grade, and grade_rank for Information School students who took INFO 300-level courses between 2015 and 2020.
WITH RankedGrades AS (
    SELECT 
        s.StudentFname AS FirstName,
        s.StudentLname AS LastName,
        co.CourseName,
        cl.Grade,
        DENSE_RANK() OVER (PARTITION BY co.CourseName ORDER BY cl.Grade DESC) AS TopRank,
        DENSE_RANK() OVER (PARTITION BY co.CourseName ORDER BY cl.Grade ASC) AS BottomRank
    FROM tblSTUDENT s
    JOIN tblCLASS_LIST cl ON s.StudentID = cl.StudentID
    JOIN tblCLASS cls ON cl.ClassID = cls.ClassID
    JOIN tblCOURSE co ON cls.CourseID = co.CourseID
    JOIN tblDEPARTMENT d ON co.DeptID = d.DeptID
    JOIN tblCOLLEGE col ON d.CollegeID = col.CollegeID
    WHERE col.CollegeName = 'Information School'
    AND co.CourseNumber LIKE 'INFO3%'
    AND cls.[YEAR] BETWEEN 2015 AND 2020
)
SELECT 
    FirstName,
    LastName,
    CourseName,
    Grade,
    CASE 
        WHEN TopRank <= 3 THEN 'Top ' + CAST(TopRank AS VARCHAR(10))
        WHEN BottomRank <= 3 THEN 'Bottom ' + CAST(BottomRank AS VARCHAR(10))
    END AS GradeRank
FROM RankedGrades
WHERE TopRank <= 3 OR BottomRank <= 3
ORDER BY CourseName, Grade DESC;


-- 3) Write a query to return student first name, last name, course name, grade, and enroll_bucket for Information School students who took INFO302 during the time period stated.
WITH INFO302Grades AS (
    SELECT 
        s.StudentFname AS FirstName,
        s.StudentLname AS LastName,
        co.CourseName,
        cl.Grade,
        NTILE(6) OVER (ORDER BY cl.Grade DESC) AS EnrollBucket
    FROM tblSTUDENT s
    JOIN tblCLASS_LIST cl ON s.StudentID = cl.StudentID
    JOIN tblCLASS cls ON cl.ClassID = cls.ClassID
    JOIN tblCOURSE co ON cls.CourseID = co.CourseID
    JOIN tblDEPARTMENT d ON co.DeptID = d.DeptID
    JOIN tblCOLLEGE col ON d.CollegeID = col.CollegeID
    WHERE col.CollegeName = 'Information School'
    AND co.CourseNumber = 'INFO302'
    AND cls.[YEAR] BETWEEN 2015 AND 2020
)
SELECT 
    FirstName,
    LastName,
    CourseName,
    Grade,
    EnrollBucket
FROM INFO302Grades
ORDER BY EnrollBucket, Grade DESC;


-- 4) Write a Query to show the percentage change in yearly enrollment for the Information School from 2010 to 2020. 
WITH YearlyEnrollment AS (
    SELECT 
        cls.[YEAR] AS Year,
        COUNT(DISTINCT cl.StudentID) AS CurrentEnrollment,
        LAG(COUNT(DISTINCT cl.StudentID)) OVER (ORDER BY cls.[YEAR]) AS PreviousEnrollment
    FROM tblSTUDENT s
    JOIN tblCLASS_LIST cl ON s.StudentID = cl.StudentID
    JOIN tblCLASS cls ON cl.ClassID = cls.ClassID
    JOIN tblCOURSE co ON cls.CourseID = co.CourseID
    JOIN tblDEPARTMENT d ON co.DeptID = d.DeptID
    JOIN tblCOLLEGE c ON d.CollegeID = c.CollegeID
    WHERE c.CollegeName = 'Information School'
    AND cls.[YEAR] BETWEEN 2010 AND 2020
    GROUP BY cls.[YEAR]
)
SELECT 
    Year,
    CurrentEnrollment,
    PreviousEnrollment,
    ROUND(
        CASE 
            WHEN PreviousEnrollment IS NULL THEN NULL
            ELSE ((CurrentEnrollment - PreviousEnrollment) * 100.0 / PreviousEnrollment)
        END, 2) AS PercentChange
FROM YearlyEnrollment
ORDER BY Year;


