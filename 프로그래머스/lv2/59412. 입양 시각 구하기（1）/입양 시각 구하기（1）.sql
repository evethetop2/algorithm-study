-- 코드를 입력하세요
SELECT DATE_FORMAT(DATETIME, "%H"), COUNT(*) AS COUNT
FROM ANIMAL_OUTS 
WHERE DATE_FORMAT(DATETIME, "%H") BETWEEN 09 AND 20
GROUP BY DATE_FORMAT(DATETIME, "%H")
ORDER BY DATE_FORMAT(DATETIME, "%H")