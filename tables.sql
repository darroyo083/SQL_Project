-- STUDENTS
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(90) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- COURSES 

CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(90) NOT NULL,
  `courses_professors_id` int NOT NULL,
  `courses_students_id` int NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `idcourses_UNIQUE` (`courses_id`),
  KEY `courses_professors_id_idx` (`courses_professors_id`),
  KEY `courses_students_id_idx` (`courses_students_id`),
  CONSTRAINT `courses_professors_id` FOREIGN KEY (`courses_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE,
  CONSTRAINT `courses_students_id` FOREIGN KEY (`courses_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- PROFESSORS
CREATE TABLE `professors` (
  `professors_id` int NOT NULL AUTO_INCREMENT,
  `professors_name` varchar(90) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- GRADES

CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_professor_id` int NOT NULL,
  `grades_students_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  `grades_score` int NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_professors_id_idx` (`grades_professor_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_professors_id` FOREIGN KEY (`grades_professor_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
