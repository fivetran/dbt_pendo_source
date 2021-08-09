{% macro get_page_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "app_id", "datatype": dbt_utils.type_string()},
    {"name": "color", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "created_by_user_id", "datatype": dbt_utils.type_string()},
    {"name": "dirty", "datatype": "boolean"},
    {"name": "group_id", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "last_updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_updated_by_user_id", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "root_version_id", "datatype": dbt_utils.type_string()},
    {"name": "stable_version_id", "datatype": dbt_utils.type_string()},
    {"name": "valid_through", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
