DESC system.students;

-- Välj vilken tabell
ALTER TABLE students
-- Modifiera kolumn
MODIFY last_name VARCHAR2(100) NULL;

-- Lägg till kolumn
ALTER TABLE students
ADD email VARCHAR2(100);

-- Ta bort kolumn
ALTER TABLE students
DROP column major;


DESC system.students;

EXIT
