SELECT COUNT(*) USERS
FROM USER_INFO
WHERE DATE_FORMAT(JOINED, "%Y") = 2021 AND AGE BETWEEN 20 AND 29