select 

    product_id,
    product_name,
    category,
    subcategory,
    sum(order_profit) as total_profit
from {{ref('stg_order')}}
group by
        product_id,
        product_name,
        category,
        subcategory
 