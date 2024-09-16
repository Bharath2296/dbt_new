{% macro test_customtest() %}
    with cte1 as 
    (
        select * from {{ ref('second') }} where CR_RETURNED_DATE_SK > 2452737
    )
    select count(*) from cte1
{% endmacro %}