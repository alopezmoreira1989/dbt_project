with source as (
    select *
    from analytics.analytics_prod.int_lineitem_enriched
)

, final as (
    select *
    from source
)

select * from final