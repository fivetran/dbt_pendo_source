
with base as (

    select * 
    from {{ ref('stg_pendo__guide_history_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_pendo__guide_history_tmp')),
                staging_columns=get_guide_history_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
    -- rename here
    from fields
)

select * from final
