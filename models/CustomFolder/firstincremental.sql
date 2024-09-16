{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select * from emp2

{% if is_incremental() %}

  where UPDATED_AT > (select max(UPDATED_AT) from {{ this }})

{% endif %}

