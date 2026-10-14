SET PAGESIZE 100

-- Plockar allt, alla kolumner, alla rader:
SELECT * FROM jokes;

-- DESC = Describe
-- Måste skrivas ut "system.jokes"
DESC system.jokes;

SELECT
	category,
	rating,
	joke
FROM jokes
-- ASC by default
WHERE rating > 5
ORDER BY rating DESC, category
FETCH FIRST 5 ROWS ONLY;

--ÖVNING 
-- 1. find all jokes that have rating 6-8
	-- and, between
-- 2. filter all DBA jokes
-- 3. filter out all DBA and Linux jokes with rating over 6

EXIT
