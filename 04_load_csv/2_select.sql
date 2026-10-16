-- EDA = Exploratory Data Analysis, man vill utforska datan

DESC system.salaries_sf;

SELECT COUNT (*) FROM salaries_sf;

-- Limit to first 5 rows
SELECT * FROM salaries_sf
FETCH FIRST 5 ROWS ONLY;

-- Paginate
SELECT
	id,
	employeename,
	totalpay
FROM salaries_sf
OFFSET 4 ROWS FETCH NEXT 10 ROWS ONLY;

-- Choosing by percentage
SELECT
	id,
	jobtitle,
	basepay
FROM salaries_sf
FETCH FIRST 1 PERCENT ROWS ONLY;


EXIT
