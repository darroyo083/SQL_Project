-- 1. The average grade that is given by each professor
USE devcamp_schema;

SELECT professors.professors_name, professors.professors_id, AVG(grades.grades_score) AS 'Averagescore'
FROM professors
LEFT JOIN grades
ON professors.professors_id = grades.grades_professor_id
GROUP BY professors_name
ORDER BY professors_id;

-- 2. The top grades for each student
USE devcamp_schema;

SELECT students.students_name, MAX(grades.grades_score) 
FROM students 
JOIN grades 
ON grades.grades_students_id = students.students_id
GROUP BY students.students_name;

-- 3. Sort students by the courses that they are enrolled in

USE devcamp_schema;

SELECT students.students_name, courses.courses_name
FROM students 
JOIN courses 
ON courses.courses_students_id = students.students_id
GROUP BY courses.courses_name, students.students_name
ORDER BY courses.courses_name;

-- 4. Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course

USE devcamp_schema;

SELECT 
courses.courses_name AS 'Course',
grades.grades_score AS 'Courses grades',
AVG(grades_score) AS 'avgGrades'
FROM grades
JOIN courses
ON courses.courses_id = grades.grades_courses_id
GROUP BY courses_name
ORDER BY avgGrades;

-- 5. Finding which student and professor have the most courses in common

USE devcamp_schema;

SELECT 
students.students_name, professors.professors_name, COUNT(courses.courses_name)
FROM students
JOIN courses
ON courses.courses_students_id = students.students_id
JOIN professors 
ON courses.courses_professors_id = professors.professors_id
GROUP BY students.students_name, professors.professors_name
ORDER BY COUNT(courses.courses_name) DESC
LIMIT 1;