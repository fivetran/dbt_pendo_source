{% macro get_account_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "agent_creationdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "agent_group_id", "datatype": dbt_utils.type_string()},
    {"name": "agent_is_paying", "datatype": "boolean"},
    {"name": "agent_name", "datatype": dbt_utils.type_string()},
    {"name": "agent_planlevel", "datatype": dbt_utils.type_string()},
    {"name": "agent_salesforceaccountid", "datatype": dbt_utils.type_string()},
    {"name": "first_visit", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "id_hash", "datatype": dbt_utils.type_int()},
    {"name": "last_updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_visit", "datatype": dbt_utils.type_timestamp()},
    {"name": "salesforce_account_owner_email_c", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_customer_health_engagement_score_c", "datatype": dbt_utils.type_int()},
    {"name": "salesforce_employee_range_c", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_name", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_pbf_account_c", "datatype": "boolean"},
    {"name": "salesforce_platform_level_c", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_region_c", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_segment_c", "datatype": dbt_utils.type_string()},
    {"name": "salesforce_status_c", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
