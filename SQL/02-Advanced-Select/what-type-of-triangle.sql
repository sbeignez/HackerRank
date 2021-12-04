/* https://www.hackerrank.com/challenges/what-type-of-triangle */

/* Using IF( ) */ 
SELECT
    IF(a+b <= c OR a+c <= b OR b+c <= a,'Not A Triangle',
        IF(a = b AND b = c, 'Equilateral',
            IF(a = b OR b = c OR a = c, 'Isosceles', 'Scalene')
        )
    )
FROM triangles;

/* Using CASE  */ 
SELECT 
    CASE 
        WHEN A >= (B + C) OR B >= (A + C) OR C >= (A + B) THEN 'Not A Triangle'
        WHEN A = B AND A = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;


/*
Equilateral
Equilateral
Isosceles
Equilateral
Isosceles
Equilateral
Scalene
Not A Triangle
Scalene
Scalene
Scalene
Not A Triangle
Not A Triangle
Scalene
Equilateral
*/