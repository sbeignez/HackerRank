-- 


SELECT  P.`company_name`,
    COUNT(
        CASE 
            WHEN P.`action`='EMAIL' 
            THEN 1 
            ELSE NULL 
        END
    ) AS 'EMAIL',
    COUNT(
        CASE 
            WHEN P.`action`='PRINT' AND P.`pagecount` = '1' 
            THEN P.`pagecount` 
            ELSE NULL 
        END
    ) AS 'PRINT 1 pages',
    COUNT(
        CASE 
            WHEN P.`action`='PRINT' AND P.`pagecount` = '2' 
            THEN P.`pagecount` 
            ELSE NULL 
        END
    ) AS 'PRINT 2 pages',
    COUNT(
        CASE 
            WHEN P.`action`='PRINT' AND P.`pagecount` = '3' 
            THEN P.`pagecount` 
            ELSE NULL 
        END
    ) AS 'PRINT 3 pages'
FROM    test_pivot P
GROUP BY P.`company_name`;

--

SELECT
    CASE
        WHEN o1.occupation = 'Doctor'
        THEN o1.name
        ELSE NULL
    END AS 'Doctor',
    CASE
        WHEN o1.occupation = 'Actor'
        THEN o1.name
        ELSE NULL
    END AS 'Actor'
FROM occupations o1
ORDER BY 'Doctor', 'Actor'
;

--
WITH
    doctors AS (SELECT DISTINCT *, ROW_NUMBER() OVER(ORDER BY name) AS r FROM occupations WHERE occupation = 'Doctor' ORDER BY name),
    professors AS (SELECT DISTINCT *, ROW_NUMBER() OVER(ORDER BY name) AS r FROM occupations WHERE occupation = 'Professor' ORDER BY name),
    singers AS (SELECT DISTINCT *, ROW_NUMBER() OVER(ORDER BY name) AS r FROM occupations WHERE occupation = 'Singer' ORDER BY name)
SELECT
    CASE WHEN doctors.r THEN doctors.name ELSE NULL END AS d,
    CASE WHEN professors.r THEN professors.name ELSE NULL END AS p,
    CASE WHEN singers.r THEN singers.name ELSE NULL END AS s
FROM doctors, professors, singers
WHERE doctors.r = professors.r
    AND doctors.r = singers.r
;

