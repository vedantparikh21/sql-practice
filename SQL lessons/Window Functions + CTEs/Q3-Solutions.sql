with product_totals as (
  SELECT
  category,
  product,
  sum(spend) as total_spend
from 
  product_spend
where transaction_date >= '2022-01-01'
 and transaction_date < '2023-01-01'
group by category,product
order by category asc, total_spend DESC
),
category_ranking as (
select 
  category,
  product,
  total_spend,
  row_number() over (
    partition by category
    order by total_spend DESC
  ) as rn 
FROM product_totals
)
SELECT
  category,
  product,
  total_spend
from category_ranking
WHERE
rn <= 2;