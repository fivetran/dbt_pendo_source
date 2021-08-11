
with base as (

    select * 
    from {{ ref('stg_pendo__application_history_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_pendo__application_history_tmp')),
                staging_columns=get_application_history_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        agent_policy_prod,
        agent_policy_staging,
        agent_version_prod,
        agent_version_staging,
        application_flags_cname,
        application_flags_disabled,
        application_flags_guide_localization,
        application_flags_guide_widget,
        application_flags_onboarding,
        application_flags_prevent_code_injection,
        application_flags_show_guides_to_anon,
        application_flags_xhr_timings,
        created_at,
        created_by_user_id,
        description,

        display_name,
        event_count,
        event_rate,
        first_event_time,


        id as application_id,
        integrated,
        is_deleted,
        last_updated_at,
        last_updated_by_user_id,

        name as application_name,
        datatype,
        platform,
        push_application_id,


        subscription_id,
        _fivetran_synced

    from fields
)

select * from final
