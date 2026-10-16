SET SQLFORMAT csv

SELECT * 
FROM salaries_sf
ORDER BY basepay DESC
-- Fetch 0.2% of top rows
FETCH FIRST .2 PERCENT ROWS ONLY;

EXIT
