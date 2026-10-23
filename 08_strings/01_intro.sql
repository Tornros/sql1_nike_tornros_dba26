-- Concatenation

-- Normalt "selectar" man från tabeller.
-- Kolumnerna döps automatiskt till inputen, om ej annat anges.
SELECT
	42,
	'Hej DBA26' AS Greet;
	-- Concatenation, slå ihop strängar med || :
	'SQL' || 'is the language of relational databases' || ':)' AS concatenation
	CONCAT('Hello', 'Oracle') AS conc_func
i;

-- Strings function and subquery

SELECT 
	s AS original,
	UPPER(s),
	LOWER(s),
	INITCAP(s),
	LENGTH(s)
FROM (SELECT 'OraCle SQl' AS s);


SELECT 
	-- Originalsträngen:
	s,
	-- Substring, slicear/ plockar ut delar från strängen:
	-- 1, indexet man börjar från, 6 är hur långt man vill gå.
	-- I bash förjar man på 0, i sql 1
	SUBSTR(s, 1,6) AS first_six,
	SUBSTR(s, 7) AS from_seven,
	SUBSTR(s, -4) AS last_four
-- s = variabel, kan heta vad som helst
FROM (SELECT 'Oracle SQL on Oracle26ai' AS s);

-- INSTR = In String
SELECT
	-- Kollar första gången 'operation' dyker upp i första meningen. Här 12:e platsen.
	INSTR('idempotent operation', 'operation') AS first_occurance,
	-- Hittar 2:a gången "an" dyker upp 
	INSTR('banana', 'an',1,2) AS second_oc,
	SUBSTR('cool@evilcorp.com', '@'), INSTR('cool@evilcorp.com', '@')+1) AS domain
	;


-- Clean a string

-- Före: Leading spaces
-- Efter: Trailing spaces

SELECT
	s,
	TRIM(s),
	LTRIM(s),
	RTRIM(s),
	REPLACE(TRIM(s), '	', ' ')
FROM (SELECT '		HellU	Oracle		' AS s);











EXIT
