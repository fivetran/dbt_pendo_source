{% macro get_application_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "agent_policy_prod", "datatype": dbt_utils.type_string()},
    {"name": "agent_policy_staging", "datatype": dbt_utils.type_string()},
    {"name": "agent_version_prod", "datatype": dbt_utils.type_string()},
    {"name": "agent_version_staging", "datatype": dbt_utils.type_string()},
    {"name": "application_flags_cname", "datatype": "boolean"},
    {"name": "application_flags_disabled", "datatype": "boolean"},
    {"name": "application_flags_guide_localization", "datatype": "boolean"},
    {"name": "application_flags_guide_widget", "datatype": "boolean"},
    {"name": "application_flags_onboarding", "datatype": "boolean"},
    {"name": "application_flags_prevent_code_injection", "datatype": "boolean"},
    {"name": "application_flags_show_guides_to_anon", "datatype": "boolean"},
    {"name": "application_flags_xhr_timings", "datatype": "boolean"},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "created_by_user_id", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "disabled_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "display_name", "datatype": dbt_utils.type_string()},
    {"name": "event_count", "datatype": dbt_utils.type_int()},
    {"name": "event_rate", "datatype": dbt_utils.type_int()},
    {"name": "first_event_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "guide_css_url", "datatype": dbt_utils.type_string()},
    {"name": "icon_url", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "integrated", "datatype": "boolean"},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "last_updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_updated_by_user_id", "datatype": dbt_utils.type_string()},
    {"name": "marked_for_deletion_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "platform", "datatype": dbt_utils.type_string()},
    {"name": "push_application_id", "datatype": dbt_utils.type_string()},
    {"name": "record_until", "datatype": dbt_utils.type_timestamp()},
    {"name": "sampling_rate", "datatype": dbt_utils.type_timestamp()},
    {"name": "starting_event_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "store_url", "datatype": dbt_utils.type_string()},
    {"name": "subscription_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
