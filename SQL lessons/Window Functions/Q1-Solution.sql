with ranked_txn as(
  SELECT
    user_id,
    spend,
    transaction_date,
    rank() over (
      partition by user_id
      order by transaction_date
    )
    from transactions
)
SELECT
  user_id,
  spend,
  transaction_date
  -- rank
FROM
  ranked_txn
where rank = 3
;
