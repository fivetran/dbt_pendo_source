{% macro get_step_poll_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "poll_id", "datatype": dbt_utils.type_string()},
    {"name": "step_id", "datatype": dbt_utils.type_string()},
    {"name": "step_last_updated_at", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
