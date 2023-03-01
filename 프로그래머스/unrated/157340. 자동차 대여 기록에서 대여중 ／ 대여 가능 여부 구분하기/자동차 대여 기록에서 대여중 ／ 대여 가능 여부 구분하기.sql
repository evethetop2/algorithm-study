SELECT distinct CAR_ID, if(CAR_ID in 
    (select CAR_ID
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where "2022-10-16" between START_DATE and END_DATE
    ), "대여중", "대여 가능")  AS AVAILABILITY
# SELECT *
from CAR_RENTAL_COMPANY_RENTAL_HISTORY

order by CAR_ID desc