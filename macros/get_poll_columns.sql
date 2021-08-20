{% macro get_poll_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "attribute_display", "datatype": dbt_utils.type_string()},
    {"name": "attribute_follow_up", "datatype": dbt_utils.type_string()},
    {"name": "attribute_max_length", "datatype": dbt_utils.type_string()},
    {"name": "attribute_placeholder", "datatype": dbt_utils.type_string()},
    {"name": "attribute_type", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "question", "datatype": dbt_utils.type_string()},
    {"name": "reset_at", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
