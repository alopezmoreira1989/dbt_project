with source as (
    select *
    from {{ ref('int_lineitem_enriched') }}
)

, final as (
    select *
    from source
)

select * from final