DESC system.salaries_sf;

SELECT * FROM salaries_sf
ORDER BY employeename
FETCH FIRST 5 ROWS ONLY;


-- AS = Create alias, "display name"
SELECT COUNT(*), 
	ROUND(AVG(basepay)) AS avg_basepay,
	ROUND(AVG(totalpay)) AS avg_totalpay,
	ROUND(AVG(totalpaybenefits)) AS avg_totalpaybenefits,
	-- COUNT = Aggregation function, counts ammount of rows
	-- Can't mix row lengths, count creates one cell instead of multiple
	-- DISTINCT = Show unique entries
	COUNT(DISTINCT year) AS unique_years,
	COUNT(DISTINCT jobtitle) AS unique_jobs
FROM salaries_sf;

-- Shows unqie year entires
SELECT DISTINCT year FROM salaries_sf;

EXIT
