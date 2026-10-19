DESC system.computer_prices;

SELECT * FROM computer_prices
FETCH FIRST 10 ROWS ONLY;

SELECT
	-- 'os' skrivs ut för att få med kolumnen
	os,
	-- Median = Aggregeringsfunktion
	-- AS = Alias, vad det visas som
	MEDIAN(price) AS median_prices,
	-- ROUND() = Avrundad
	-- ,2 = 2 decimaler
	ROUND(AVG(weight_kg),2) AS avg_weight_kg,
	MAX(RAM_GB) AS top_ram
FROM computer_prices
-- Filtrera:
WHERE release_year > 2023
-- Gruppera:
GROUP BY os
HAVING median_prices > 1850
ORDER BY median_prices DESC;

EXIT
