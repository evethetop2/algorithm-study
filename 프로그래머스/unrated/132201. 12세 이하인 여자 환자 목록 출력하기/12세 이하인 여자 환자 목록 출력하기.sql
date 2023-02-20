-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE, (case when TLNO is null then "NONE" ELSE TLNO END) AS TLNO
FROM patient
where GEND_CD = "W" and age <= 12
order by age desc, pt_name