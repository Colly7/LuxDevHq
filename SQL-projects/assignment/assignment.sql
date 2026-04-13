CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    class VARCHAR(10),
    city VARCHAR(50)
);
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100),
    department VARCHAR(50),
    credits INT
);
-- ALTER TABLE students ADD phone_number VARCHAR(20);
ALTER TABLE students 
ADD COLUMN phone_number VARCHAR(20);
-- ALTER TABLE subjects RENAME COLUMN credits TO credit_hours;
ALTER TABLE subjects 
RENAME COLUMN credits TO credit_hours;
-- ALTER TABLE students DROP COLUMN phone_number;
ALTER TABLE students 
DROP COLUMN phone_number;
-- INSERT INTO students 
INSERT INTO students (student_id, first_name, last_name, gender, class, city) VALUES
(1, 'James', 'Mwangi', 'M', 'Form 1', 'Nairobi'),
(2, 'Mary', 'Wanjiku', 'F', 'Form 1', 'Kiambu'),
(3, 'John', 'Otieno', 'M', 'Form 2', 'Kisumu'),
(4, 'Grace', 'Akinyi', 'F', 'Form 2', 'Mombasa'),
(5, 'Esther', 'Akinyi', 'F', 'Form 3', 'Nakuru'),
(6, 'Peter', 'Kamau', 'M', 'Form 3', 'Nairobi'),
(7, 'Sarah', 'Njeri', 'F', 'Form 4', 'Nairobi'),
(8, 'David', 'Omondi', 'M', 'Form 4', 'Kisumu'),
(9, 'Ruth', 'Chebet', 'F', 'Form 3', 'Eldoret'),
(10, 'Samuel', 'Kiprono', 'M', 'Form 4', 'Nakuru');
-- INSERT INTO subjects 
INSERT INTO subjects (subject_id, subject_name, department, credit_hours) VALUES
(1, 'Mathematics', 'Sciences', 5),
(2, 'English', 'Languages', 4),
(3, 'Kiswahili', 'Languages', 4),
(4, 'Biology', 'Sciences', 5),
(5, 'Chemistry', 'Sciences', 5),
(6, 'Physics', 'Sciences', 5),
(7, 'History', 'Humanities', 3),
(8, 'Geography', 'Humanities', 3),
(9, 'Business Studies', 'Business', 4),
(10, 'Computer Studies', 'Sciences', 4);
-- INSERT INTO exam_results 
INSERT INTO exam_results (result_id, student_id, subject_id, exam_date, marks) VALUES
(1, 1, 1, '2024-03-10', 75),
(2, 2, 2, '2024-03-11', 82),
(3, 3, 3, '2024-03-12', 63),
(4, 4, 4, '2024-03-13', 55),
(5, 5, 5, '2024-03-14', 49),
(6, 6, 6, '2024-03-15', 88),
(7, 7, 7, '2024-03-16', 71),
(8, 8, 8, '2024-03-17', 44),
(9, 9, 9, '2024-03-18', 67),
(10, 10, 10, '2024-03-19', 92);
-- Q11
SELECT COUNT(*) AS student_count FROM students;
SELECT COUNT(*) AS subject_count FROM subjects;
SELECT COUNT(*) FROM exam_results
-- Q12
UPDATE students 
SET city = 'Nairobi' 
WHERE student_id = 5;
-- Q13
UPDATE exam_results 
SET marks = 59 
WHERE result_id = 5;
-- Q14
DELETE FROM exam_results 
WHERE result_id = 9;
-- Q15
SELECT * FROM students 
WHERE class = 'Form 4';
-- Q16
SELECT * FROM subjects 
WHERE department = 'Sciences';
-- Q17
SELECT * FROM exam_results 
WHERE marks >= 70;
-- Q18
SELECT * FROM students 
WHERE gender = 'F';
-- Q19
SELECT * FROM students 
WHERE class = 'Form 3' AND city = 'Nairobi';
-- Q20

-- Q1. Marks between 50 and 80 inclusive
SELECT * FROM exam_results 
WHERE marks BETWEEN 50 AND 80;

-- Q2. Exams between 15th and 18th March 2024
SELECT * FROM exam_results 
WHERE exam_date BETWEEN '2024-03-15' AND '2024-03-18';

-- Q3. Students in Nairobi, Mombasa, or Kisumu
SELECT * FROM students 
WHERE city IN ('Nairobi', 'Mombasa', 'Kisumu');

-- Q4. Students NOT in Form 2 or Form 3
SELECT * FROM students 
WHERE class NOT IN ('Form 2', 'Form 3');

-- Q5. First name starts with 'A' or 'E'
SELECT * FROM students 
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%';

-- Q6. Subject name contains 'Studies'
SELECT * FROM subjects 
WHERE subject_name LIKE '%Studies%';

-- Q7. Count of students in Form 3
SELECT COUNT(*) AS form3_students 
FROM students 
WHERE class = 'Form 3';

-- Q8. Count of exam results with marks >= 70
SELECT COUNT(*) AS marks_70_and_above 
FROM exam_results 
WHERE marks >= 70;

-- Q9. Grade description using CASE WHEN
SELECT 
    result_id,
    student_id,
    subject_id,
    marks,
    CASE 
        WHEN marks >= 80 THEN 'Distinction'
        WHEN marks >= 60 THEN 'Merit'
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS performance
FROM exam_results;

-- Q10. Student level using CASE WHEN
SELECT 
    first_name,
    last_name,
    class,
    CASE 
        WHEN class IN ('Form 3', 'Form 4') THEN 'Senior'
        WHEN class IN ('Form 1', 'Form 2') THEN 'Junior'
    END AS student_level
FROM students;
