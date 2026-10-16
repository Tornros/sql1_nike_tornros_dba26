SET PAGESIZE 100;

SELECT * FROM amazon
FETCH FIRST 5 ROWS ONLY;

DESC system.amazon;

SELECT * FROM amazon WHERE quantity > 10;

SELECT 
	category,
	product_name,
	sales,
	quantity
FROM amazon
WHERE quantity > 10 AND category NOT IN ('Binders', 'Storage', 'Phones')
ORDER BY category;


SELECT
	category,
	product_name,
	quantity
FROM amazon
WHERE quantity < 2 OR quantity > 12
ORDER BY quantity;


-- IN Operator

SELECT category, product_name, sales
FROM amazon
WHERE category IN ('Tables', 'Chairs', 'Binders')
ORDER BY category
;

EXIT


