with stock_wise_opening as (
select 
  ticker,
  -- EXTRACT(month from date)as "Month",
  to_char(date,'Mon') as "Month",
  extract(year from date) as "Year",
  open,
  row_number() over (
    PARTITION by ticker
    order by ticker, open DESC
  )as highest_rn, 
  row_number() over (
    partition by ticker
    order by ticker, open asc 
  )as lowest_rn
from stock_prices
),
highest_stock_opening as (
select 
  ticker,
  Concat("Month",'-',"Year") as highest_mth,
  open as highest_open
from stock_wise_opening
where highest_rn = 1
),
lowest_stock_opening as (
select 
  ticker,
  Concat("Month",'-',"Year") as lowest_mth,
  open as lowest_open
from stock_wise_opening
where lowest_rn =1
)
select 
  h.ticker,
  h.highest_mth,
  h.highest_open,
  l.lowest_mth,
  lowest_open
from highest_stock_opening h 
join lowest_stock_opening l 
on h.ticker = l.ticker;
