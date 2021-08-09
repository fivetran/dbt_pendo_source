{% macro get_feature_event_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "app_id", "datatype": dbt_utils.type_string()},
    {"name": "feature_id", "datatype": dbt_utils.type_string()},
    {"name": "num_events", "datatype": dbt_utils.type_int()},
    {"name": "num_minutes", "datatype": dbt_utils.type_int()},
    {"name": "param_parameter", "datatype": dbt_utils.type_string()},
    {"name": "remote_ip", "datatype": dbt_utils.type_string()},
    {"name": "server_name", "datatype": dbt_utils.type_string()},
    {"name": "timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "user_agent", "datatype": dbt_utils.type_string()},
    {"name": "visitor_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
