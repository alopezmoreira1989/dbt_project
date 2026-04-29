with source as (

    select *
    from {{ ref('stg_partsupp') }}

)

, final as (

    select
        part_key
        , supp_key
        , part_supp_supply_cost as supply_cost
    from source

)

select * from final