-- https://www.hackerrank.com/challenges/the-pads

-- Query 1
SELECT
    CONCAT(
        name,
        '(',
        CASE
            WHEN occupation = 'Actor' THEN 'A'
            WHEN occupation = 'Singer' THEN 'S'
            WHEN occupation = 'Doctor' THEN 'D'
            WHEN occupation = 'Professor' THEN 'P'
        END, -- or shorter: LEFT(occupation,1)
        ')'
    )
FROM occupations
ORDER BY name ASC
;

-- Query 2
SELECT
    CONCAT(
        'There are a total of ',
        COUNT(occupation),
        ' ',
        LOWER(occupation),
        's.'
    )
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation ASC 
;