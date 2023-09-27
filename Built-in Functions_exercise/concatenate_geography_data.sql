CREATE VIEW view_continents_countries_currencies_details
AS
SELECT
	CONCAT(cont.continent_name, ': ',cont.continent_code) AS "Continent Details",
	CONCAT_WS(' - ', coun.country_name, coun.capital, coun.area_in_sq_km, 'km2') AS "Country Information",
	CONCAT(curr.description, '(', curr.currency_code, ')') AS "Currencies"
FROM
	continents AS cont,
	countries AS coun,
	currencies AS curr
ORDER BY
	"Country Information" ASC,
	"Currencies" ASC;
