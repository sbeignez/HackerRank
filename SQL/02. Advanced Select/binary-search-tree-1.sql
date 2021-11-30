-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT
    b.n,
    CASE
        WHEN b.p IS NULL THEN 'Root'
        WHEN (SELECT COUNT(*) FROM bst WHERE p = b.n) >= 1 THEN 'Inner'
        ELSE 'Leaf'
    END as type
FROM bst b
ORDER BY n
;


SELECT
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
	END
FROM BST
ORDER BY N ASC