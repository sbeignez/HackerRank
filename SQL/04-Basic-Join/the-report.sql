-- the-report
-- https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(g.grade < 8, NULL, s.name) as n, g.grade, s.marks
FROM students s
    JOIN grades g ON g.min_mark <= s.marks AND g.max_mark >= s.marks
ORDER BY g.grade DESC, n ASC, s.marks ASC
;

-- alt, using BETWEEN
SELECT IF(g.grade < 8, NULL, s.name) as n, g.grade, s.marks
FROM students s
    JOIN grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, n ASC, s.marks ASC
;
