SELECT * FROM user_tables;

SELECT 
	release_year,
	-- Plockar sista två, t.ex "26" från "2026"
	SUBSTR(release_year, -2) AS year,
	-- Concatination
	brand || '-' || SUBSTR(release_year, -2) AS brand_year
FROM computer_prices
FETCH FIRST 10 ROWS ONLY;


EXIT
