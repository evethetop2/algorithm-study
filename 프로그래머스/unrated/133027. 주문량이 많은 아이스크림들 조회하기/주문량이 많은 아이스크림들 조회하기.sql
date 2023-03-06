SELECT C.FLAVOR
FROM (

SELECT A.FLAVOR, A.JULY_ORDER + B.TOTAL_ORDER AS TOTAL_ORDER
FROM
(SELECT FLAVOR, SUM(TOTAL_ORDER) AS JULY_ORDER
FROM JULY A
GROUP BY FLAVOR) A
    INNER JOIN FIRST_HALF B
    ON A.FLAVOR = B.FLAVOR
ORDER BY TOTAL_ORDER DESC
LIMIT 3
) C
