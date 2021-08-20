
with base as (

    select * 
    from {{ ref('stg_pendo__poll_event_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_pendo__poll_event_tmp')),
                staging_columns=get_poll_event_columns()
            )
        }}
        
    from base
),

final as (
    
    select 

        account_id,
        app_id,
        country,
        element_path,
        event_id,
        guide_id,
        guide_step_id,
        latitude,
        load_time,
        longitude,
        poll_id,
        poll_response,
        region,
        remote_ip,
        server_name,
        timestamp as occurred_at,
        type,
        url,
        user_agent,
        visitor_id,
        _fivetran_synced,
        {{ dbt_utils.surrogate_key(['visitor_id', 'timestamp', 'account_id', 'server_name', 'remote_ip']) }} as poll_event_key


    from fields
)

select * 
from final
