{% test id_g_than_n(model, column_name, max_id) %}

    select *
    from {{ model }}
    where {{ column_name }} > {{max_id}}

{% endtest %}
