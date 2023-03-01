-- 코드를 입력하세요
SELECT book_id, author_name, DATE_FORMAT(PUBLISHED_DATE, "%Y-%m-%d")
FROM BOOK A INNER JOIN AUTHOR B ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE CATEGORY = "경제"
ORDER BY published_date