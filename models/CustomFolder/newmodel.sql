{{
    config(
        materialized='table'
    )
}}

select * from emp where name='{{ var('abc') }}'

