-- earnings-of-employees
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem


SELECT (months * salary) as earnings, count(*)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1
;

-- GROUP BY 1