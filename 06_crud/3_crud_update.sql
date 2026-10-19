DESC system.students;

SELECT * FROM students;

-- Before update --> select first

SELECT * 
FROM students
WHERE first_name = 'Emma' AND last_name = 'Watson';
-- alt. exempel:
-- WHERE student_id = 1;

-- För att uppdatera
UPDATE students
SET gpa = 3
SET major = 'DBA'
-- VIKTIGT att välja VEM som ska uppdateras, annars väljs alla
-- WHERE first_name = 'Emma' AND last_name = 'Watson';
-- alt.:
WHERE student_id = 1;

-- To see student info again
SELECT * FROM students;

-- When updating, commit changes
COMMIT;

EXIT
