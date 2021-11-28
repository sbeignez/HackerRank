/* https://www.hackerrank.com/challenges/asian-population/problem */

/* Using WHERE */
SELECT SUM(city.population)
FROM city, country
WHERE
    city.countrycode = country.code
    AND country.continent = 'Asia'
;

/* Using CTE Common Table Expression */
WITH
    city_in_asia AS (SELECT code FROM country WHERE continent = 'Asia')
SELECT SUM(population)
FROM city
    JOIN city_in_asia
        ON (city.countrycode = city_in_asia.code)
;

/* Using JOIN */
SELECT SUM(ci.population)
FROM city ci
    INNER JOIN country co
        ON (ci.countrycode = co.code)
WHERE
    co.continent = 'Asia'
;

/* Using Sub-Query */
SELECT SUM(CITY.POPULATION)
FROM CITY
WHERE CITY.COUNTRYCODE IN (SELECT CODE FROM COUNTRY WHERE CONTINENT = 'ASIA');