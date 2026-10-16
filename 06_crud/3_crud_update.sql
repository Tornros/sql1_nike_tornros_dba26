DESC system.students;

SELECT * FROM students;

SELECT * 
FROM students
WHERE first_name = 'Emma' AND last_name = 'Watson';

UPDATE students
SET gpa=2
WHERE first_name = 'Emma' AND last_name = 'Watson';

-- To see student info again
SELECT * FROM students;

-- When updating, commit changes
COMMIT;

EXIT
