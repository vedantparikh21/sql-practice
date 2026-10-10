select 
  user_id,
  tweet_date,
  round(
    avg(tweet_count) over(
      partition by user_id
      order by user_id, tweet_date
      rows between 2 PRECEDING and current ROW
    ), 2
  ) as rolling_avg_3d
from tweets