-- https://www.hackerrank.com/challenges/challenges/problem





-- wrong
SELECT h.hacker_id, h.name, COUNT(*)
FROM hackers h
    JOIN challenges c ON (c.hacker_id = h.hacker_id)
GROUP BY h.hacker_id, h.name
ORDER BY COUNT(*) DESC, h.hacker_id
;