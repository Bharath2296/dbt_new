{{
    config(
        materialized='table',tags="p3"
    )
}}
with cte1 as (
select * from {{ source('SnowflakeTable','CALL_CENTER12') }}
)select * from cte1