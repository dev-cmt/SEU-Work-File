-- 1. CREATE Table (Database Design):
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    gpa DECIMAL(3, 2)
);

-- 2. INSERT Data:
INSERT INTO Student (name, email, age, gpa)
VALUES 
    ('Alice', 'alice@example.com', 20, 3.9),
    ('Bob', 'bob@example.com', 22, 3.5),
    ('Charlie', 'charlie@example.com', 21, 3.7);


-- 3. UPDATE Data:
UPDATE Student
SET gpa = 4.0
WHERE student_id = 1;

-- 4. DELETE Data:
DELETE FROM Student
WHERE student_id = 3;


-- 5. Add a Column:
ALTER TABLE Student
ADD COLUMN address VARCHAR(255);

-- 6. Remove a Column:
ALTER TABLE Student
DROP COLUMN address;


-- 7. Add a Row:
INSERT INTO Student (name, email, age, gpa)
VALUES ('David', 'david@example.com', 23, 3.8);


-- 8. Remove a Row:
DELETE FROM Student
WHERE student_id = 2;


-- 9. Update Column Data:
UPDATE Student
SET age = 24
WHERE student_id = 4;



-- 10. ORDER BY:
SELECT * FROM Student
ORDER BY gpa DESC;


-- 11. GROUP BY:
SELECT age, COUNT(*) AS student_count
FROM Student
GROUP BY age;

-- 12. SUM:
SELECT SUM(gpa) AS total_gpa
FROM Student;

-- 13. MIN:
SELECT MIN(gpa) AS lowest_gpa
FROM Student;


-- 14. MAX:
SELECT MAX(gpa) AS highest_gpa
FROM Student;


-- 15. Multiplication:
SELECT name, gpa * 2 AS double_gpa
FROM Student;

-- 16. Division:
SELECT name, gpa / age AS gpa_age_ratio
FROM Student;

-- 18. COUNT:
SELECT COUNT(*) AS total_students
FROM Student;


-- 19. Complete Report:
SELECT 
    name,
    email,
    age,
    gpa,
    SUM(gpa) OVER() AS total_gpa,
    MIN(gpa) OVER() AS lowest_gpa,
    MAX(gpa) OVER() AS highest_gpa,
    AVG(gpa) OVER() AS average_gpa,
    COUNT(*) OVER() AS total_students
FROM Student
ORDER BY gpa DESC;















