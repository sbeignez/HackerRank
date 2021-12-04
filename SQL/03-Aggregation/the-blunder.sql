-- https://www.hackerrank.com/challenges/the-blunder/problem

SELECT
    CEILING(
        AVG(salary) - AVG(replace(salary,'0',''))
    )
FROM employees
;