{{
    config(
        materialized='table'
    )
}}

select * from data_raw.globalmart.product