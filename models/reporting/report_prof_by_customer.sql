select 
    customer_name,
    segment,
    sum(order_profit) as total_profit
from {{ref('stg_order')}}
group by
        customer_name,
        segment