SELECT ROUND(avg(daily_fee)) AS AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
group by car_type
having car_type = "SUV"