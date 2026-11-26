select 
  user_id, 
  round(sum(total_amount), 3) as total_spend, 
  count(transaction_id) as purchase_count,
  round(sum(total_amount)*100 / sum(sum(total_amount)) over(), 3) as spend_share_pct
from transactions
group by user_id
