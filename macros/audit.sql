{% macro audit(input) %}
    insert into audit values('{{ input }}',current_timestamp())
{% endmacro %}