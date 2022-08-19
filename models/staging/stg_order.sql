select * from (select 
    tab1.order_id,
    tab1.order_date,
    tab1.ship_date,tab1.ship_mode,
    tab1.ORDER_SELLING_PRICE-tab1.ORDER_COST_PRICE as order_profit,
    tab2.customer_name,
    tab2.segment,
    tab2.country,
    tab3.category,
    tab3.product_id,
    tab3.product_name,
    tab3.subcategory
    from {{ref('raw_orders')}} as tab1 
    left join {{ref('raw_customer')}} as tab2 
    on tab1.customer_id=tab2.customer_id
    left join {{ref('raw_product')}} as tab3 
    on tab1.product_id=tab3.product_id)as tot

