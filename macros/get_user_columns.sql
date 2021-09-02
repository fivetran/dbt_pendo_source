{% macro get_user_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "deleted_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "first_name", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "last_name", "datatype": dbt_utils.type_string()},
    {"name": "role", "datatype": dbt_utils.type_int()},
    {"name": "user_type", "datatype": dbt_utils.type_string()},
    {"name": "username", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
