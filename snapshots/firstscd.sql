{% snapshot firstscd %}
{{ config(
    target_schema="snapshots",
    target_database="dbt_new",
    unique_key="id",
    strategy="timestamp",
    updated_at="updated_at",
    ) }}


    with cte2 as(
        select * from  emp2
    )select * from  cte2
    {% endsnapshot %}