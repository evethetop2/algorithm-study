SELECT A.CAR_ID, A.CAR_TYPE, FLOOR(DAILY_FEE-(DAILY_FEE * DISCOUNT_RATE/100))*30 AS FEE
FROM(
SELECT  A.CAR_ID ,A.CAR_TYPE, A.DAILY_FEE 
FROM CAR_RENTAL_COMPANY_CAR A INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY B
                            ON A.CAR_ID = B.CAR_ID
WHERE A.CAR_TYPE IN ('세단','SUV')

GROUP BY A.CAR_iD
HAVING  A.CAR_TYPE IN ('세단','SUV') AND
        (MAX(B.END_DATE) <= "2022-11-01"
        or MAX(B.START_DATE) >= "2022-12-01")) A


# HAVING MAX(B.END_DATE) < "2022-11-01" OR MAX(B.START_DATE) >= "2022-12-01"

INNER JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN B ON A.CAR_TYPE = B.CAR_TYPE
 
WHERE B.duration_type = '30일 이상' AND ROUND(A.DAILY_FEE-(A.DAILY_FEE * B.DISCOUNT_RATE/100))*30 >= 500000 AND ROUND(A.DAILY_FEE-(A.DAILY_FEE * B.DISCOUNT_RATE/100))*30 <2000000
ORDER BY FEE DESC, A.CAR_TYPE, A.CAR_ID DESC


# SELECT *
# FROM CAR_RENTAL_COMPANY_CAR as C
# join CAR_RENTAL_COMPANY_RENTAL_HISTORY as H on C.car_id=H.car_id
# where 


# select C.car_id,C.car_type,Round((daily_fee/100)*(100-discount_rate)*30) as Fee
# from (select car_id
# from CAR_RENTAL_COMPANY_RENTAL_HISTORY as H
# group by H.Car_id
# having Max(end_date)<'2022-11-01')as H join CAR_RENTAL_COMPANY_CAR as C
# on H.car_id = C.car_id
# join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as P 
# on P.car_type = C.car_type
# where C.car_type in ("세단","SUV") and duration_type like "30일%"
# and (daily_fee/100)*(100-discount_rate)*30 between 500000 and 2000000
# order by Fee desc ,car_type