with per_prod_ranking as (
select 
  p.product_name,
  p.category_name,
  ps.sales_quantity,
  ps.rating,
  row_number() over (
    partition by category_name
    order by sales_quantity desc, rating desc 
  ) as rn 
from products p 
join product_sales ps 
on p.product_id = ps.product_id
)
select 
  category_name,
  product_name
from per_prod_ranking
where rn = 1;
  