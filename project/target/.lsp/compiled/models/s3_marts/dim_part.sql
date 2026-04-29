with source as (

    select *
    from analytics.analytics_prod.stg_part

)

, final as (

    select

        -- primary key
        part_key

        -- attributes
        , part_name
        , part_mfgr as manufacturer
        , part_size
        , part_type
        , part_container

        -- reference price
        , part_retail_price as retail_price

    from source

)

select * from final