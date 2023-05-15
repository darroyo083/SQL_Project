USE devcamp_schema;

SELECT *
FROM professors;

INSERT INTO professors(professors_id, professors_name)
VALUES ("1", 'professor1');
INSERT INTO professors(professors_id, professors_name)
VALUES ("2", 'professor2');
INSERT INTO professors(professors_id, professors_name)
VALUES ("3", 'professor3');
INSERT INTO professors(professors_id, professors_name)
VALUES ("4", 'professor4');
INSERT INTO professors(professors_id, professors_name)
VALUES ("5", 'professor5');
INSERT INTO professors(professors_id, professors_name)
VALUES ("6", 'professor6');
INSERT INTO professors(professors_id, professors_name)
VALUES ("7", 'professor7');
INSERT INTO professors(professors_id, professors_name)
VALUES ("8", 'professor8');
INSERT INTO professors(professors_id, professors_name)
VALUES ("9", 'professor9');
INSERT INTO professors(professors_id, professors_name)
VALUES ("10", 'professor10');


INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("1", 'courses1', 8, 4);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("2", 'courses2', 4, 7);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("3", 'courses3', 1, 3);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("4", 'courses4', 9, 4);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("5", 'courses5', 5, 6);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("6", 'courses6', 3 ,1);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("7", 'courses7', 2, 6);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("8", 'courses8', 6, 9);
INSERT INTO courses(courses_id, courses_name, courses_professors_id, courses_students_id)
VALUES ("9", 'courses9', 7, 5);
INSERT INTO courses(courses_id, courses_name,courses_professors_id,courses_students_id)
VALUES (10, 'courses10',11,2);
INSERT INTO courses(courses_id, courses_name,courses_professors_id,courses_students_id)
VALUES (11, 'courses1',1,1);
INSERT INTO courses(courses_id, courses_name,courses_professors_id,courses_students_id)
VALUES (12, 'courses2',1,1);


INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("1", 4, 8, 6, 2);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("2", 4, 1, 6, 7);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("3", 1, 6, 7, 4);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("4", 7, 4, 1, 1);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("5", 8, 9, 8, 9);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("6", 4, 1, 2, 8);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("7", 2, 8, 7, 5);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("8", 8, 4, 5, 9);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("9", 1, 5, 3, 4);
INSERT INTO grades(grades_id, grades_professor_id, grades_students_id, grades_courses_id, grades_score)
VALUES ("10", 8, 6, 2, 8);

-- Script for creating a random number for the grades score
USE devcamp_schema;

SET SQL_SAFE_UPDATES = 0;

BEGIN;
UPDATE grades
SET grades_score = RAND()*20;