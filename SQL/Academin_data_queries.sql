CREATE DATABASE Student_performance
USE Student_performance

SELECT Count(*)  AS Rows_Count FROM students;

SELECT * FROM students LIMIT 10

SELECT COUNT(*), grade 
FROM students 
GROUP BY grade ;
-- marks range for grades-- 
SELECT MAX(total_score), MIN(total_score) , grade 
FROM students 
GROUP BY grade;
-- Corelation between study hours and Grades --
SELECT ROUND(weekly_self_study_hours,0) AS Study_hours_bucket, 
AVG(total_score) AS Avg_Score, 
Count(*) AS No_of_students 
FROM students
GROUP BY Study_hours_bucket
ORDER BY Study_hours_bucket;
-- Students at risk of failing-- 
SELECT  * 
FROM students 
WHERE total_score<40;
-- Impact of Attendance--
SELECT FLOOR(attendance_percentage/10)*10 AS Attendance_bucket,
ROUND(AVG(total_score),0) AS Avg_Score,
COUNT(*) AS No_of_Students
FROM students
GROUP BY Attendance_bucket
ORDER BY Attendance_bucket;
-- Attendance Range--
SELECT MIN(attendance_percentage) AS min_Attendance, 
MAX(attendance_percentage) AS max_attendance
FROM students;
-- relation between class participation and avg total scores --
SELECT class_participation , 
FLOOR(AVG(total_score)) AS Avg_score,
Count(*) AS No_of_students
FROM Students 
GROUP BY class_participation 
ORDER BY Avg_score DESC;
-- top performenrs practices--
SELECT * 
FROM students 
WHERE grade ="A";
