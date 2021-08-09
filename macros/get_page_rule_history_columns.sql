{% macro get_page_rule_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "designer_hint", "datatype": dbt_utils.type_string()},
    {"name": "page_id", "datatype": dbt_utils.type_string()},
    {"name": "page_last_updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "parsed_rule", "datatype": dbt_utils.type_string()},
    {"name": "rule", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
