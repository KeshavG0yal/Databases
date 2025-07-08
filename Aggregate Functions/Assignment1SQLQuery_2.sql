-- 5
SELECT BuildingName
FROM tblBUILDING
WHERE BuildingTypeID = (SELECT BuildingTypeID FROM tblBUILDING_TYPE WHERE BuildingTypeName = 'Dormitory')
AND LocationID = (SELECT LocationID FROM tblLOCATION WHERE LocationName = 'Stevens Way');


-- 6
-- there are no students with 25 or more credits the same query returns results with a lower credit requirement ex. 10, 11, 12, 13
SELECT tblSTUDENT.StudentLName, tblSTUDENT.StudentFName
FROM tblSTUDENT WHERE StudentID IN (SELECT tblSTUDENT.StudentID FROM tblSTUDENT 
JOIN tblCLASS_LIST ON tblSTUDENT.StudentID = tblCLASS_LIST.StudentID
JOIN tblCLASS ON tblCLASS_LIST.ClassID = tblCLASS.ClassID
JOIN tblCOURSE ON tblCLASS.CourseID = tblCOURSE.CourseID
JOIN tblDEPARTMENT ON tblCOURSE.DeptID = tblDEPARTMENT.DeptID
WHERE tblDEPARTMENT.DeptAbbrev LIKE 'INFO'
AND tblCLASS_LIST.RegistrationDate BETWEEN '2015-01-01' AND '2020-12-31'
GROUP BY tblSTUDENT.StudentID
HAVING SUM(tblCOURSE.Credits) >= 25);


-- 7
SELECT TOP 5 tblSCHEDULE.ScheduleName, 
             COUNT(DISTINCT tblCLASS.ClassID) AS TotalClasses, 
             COUNT(tblCLASS_LIST.StudentID) AS TotalEnrollment
FROM tblSCHEDULE
JOIN tblCLASS ON tblSCHEDULE.ScheduleID = tblCLASS.ScheduleID
JOIN tblCLASS_LIST ON tblCLASS.ClassID = tblCLASS_LIST.ClassID
WHERE YEAR(tblCLASS_LIST.RegistrationDate) = 2020
GROUP BY tblSCHEDULE.ScheduleName
ORDER BY TotalClasses DESC, TotalEnrollment DESC;


-- 8
SELECT tblCOURSE.CourseName, 
             COUNT(tblCLASS_LIST.StudentID) AS Enrollment, 
             SUM(tblCLASS_LIST.RegistrationFee) AS TotalTuitionFees
FROM tblCOURSE
JOIN tblCLASS ON tblCOURSE.CourseID = tblCLASS.CourseID
JOIN tblCLASS_LIST ON tblCLASS.ClassID = tblCLASS_LIST.ClassID
WHERE tblCOURSE.CourseName LIKE 'INFO3%'
AND YEAR(tblCLASS_LIST.RegistrationDate) = 2019
GROUP BY tblCOURSE.CourseName;

