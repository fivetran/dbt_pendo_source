{% macro get_account_application_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "account_last_updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "app_id", "datatype": dbt_utils.type_string()},
    {"name": "first_visit", "datatype": dbt_utils.type_timestamp()},
    {"name": "id_hash", "datatype": dbt_utils.type_int()},
    {"name": "last_updated", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_visit", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
