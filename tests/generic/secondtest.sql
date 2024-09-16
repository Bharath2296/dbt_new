{% test customtest1(model, column_name) %}
    select * from {{ model }} where {{ column_name }} >= 2452737
{% endtest %}