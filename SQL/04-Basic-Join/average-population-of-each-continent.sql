/* https://www.hackerrank.com/challenges/average-population-of-each-continent/problem */

SELECT co.continent, FLOOR(AVG(ci.population))
FROM country co
    JOIN city ci
        ON (co.code = ci.countrycode)
GROUP BY co.continent
;