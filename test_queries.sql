-- Instructor Test
SET ROLE instructor_role;
SELECT * FROM grades;
UPDATE grades SET grade = 'A+' WHERE student_id = 3;

-- Student Test
SET app.current_student = '3';
SET ROLE student_role;
SELECT * FROM grades;

-- Should Fail
UPDATE grades SET grade = 'A' WHERE student_id = 3;
