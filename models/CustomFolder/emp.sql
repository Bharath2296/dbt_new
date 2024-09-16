{{
    config(pre_hook=" {{ audit('model start') }}",materialized='table',alias='emp2',
    post_hook=" {{ audit('model end') }} ",tags="p2")
    
}}

with cte1 as(
    select * from emp
) select * from cte1

