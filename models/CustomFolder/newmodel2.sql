with cte1 as
(
    select *  from {{ source('SnowflakeTable', 'CALL_CENTER12') }}
)
select *,'{{ invocation_id }}' as invid from cte1