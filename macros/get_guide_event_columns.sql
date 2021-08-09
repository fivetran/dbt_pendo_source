{% macro get_guide_event_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "app_id", "datatype": dbt_utils.type_string()},
    {"name": "country", "datatype": dbt_utils.type_string()},
    {"name": "element_path", "datatype": dbt_utils.type_string()},
    {"name": "event_id", "datatype": dbt_utils.type_string()},
    {"name": "guide_id", "datatype": dbt_utils.type_string()},
    {"name": "guide_step_id", "datatype": dbt_utils.type_string()},
    {"name": "latitude", "datatype": dbt_utils.type_float()},
    {"name": "load_time", "datatype": dbt_utils.type_int()},
    {"name": "longitude", "datatype": dbt_utils.type_float()},
    {"name": "region", "datatype": dbt_utils.type_string()},
    {"name": "remote_ip", "datatype": dbt_utils.type_string()},
    {"name": "server_name", "datatype": dbt_utils.type_string()},
    {"name": "timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "url", "datatype": dbt_utils.type_string()},
    {"name": "user_agent", "datatype": dbt_utils.type_string()},
    {"name": "visitor_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
