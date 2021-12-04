-- https://www.hackerrank.com/challenges/placements/problem

SELECT s.name
FROM students s
    JOIN packages sp ON (sp.id = s.id)
    JOIN friends f ON (f.id = s.id)
    JOIN packages fp ON (fp.id = f.friend_id)
WHERE 
    sp.salary <= fp.salary
ORDER BY
    fp.salary ASC
;