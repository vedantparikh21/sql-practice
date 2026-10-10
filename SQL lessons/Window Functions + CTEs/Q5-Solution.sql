with ranking_measurements as (
SELECT
  measurement_time,
  measurement_value,
  row_number() over (
    partition by measurement_time :: date 
    order by measurement_time 
  ) as rn 
from 
  measurements
)
SELECT
  measurement_time :: date as measurement_day,
  sum(
    CASE
    when rn %2 = 1 then measurement_value
    else 0
    END
  ) as odd_sum,
  sum(
    CASE
    when rn%2 = 0 then measurement_value
    else 0
    END
  ) as even_sum
from ranking_measurements
group by measurement_day
order by measurement_day;