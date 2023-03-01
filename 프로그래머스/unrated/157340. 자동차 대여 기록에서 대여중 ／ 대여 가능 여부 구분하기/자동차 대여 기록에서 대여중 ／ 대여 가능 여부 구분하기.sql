-- 코드를 입력하세요
SELECT car_id, 
       MAX((case when "2022-10-16" NOT BETWEEN date_format(start_date, "%Y-%m-%d") AND
       date_format(end_date, "%Y-%m-%d") Then "대여 가능" ELSE "대여중" END))
       AS AVAILABILITY        
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 


GROUP BY CAR_ID
ORDER BY CAR_ID DESC