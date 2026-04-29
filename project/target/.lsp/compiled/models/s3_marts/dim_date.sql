with source as (

    select order_date
    from analytics.analytics_prod.stg_orders

)

, final as (

    select
        order_date as date
        , extract(year from order_date) as year
        , extract(month from order_date) as month
        , extract(day from order_date) as day
        , extract(week from order_date) as week
        , extract(dayofweek from order_date) as day_of_week
        , date_trunc('month', order_date) as month_start
        , date_trunc('year', order_date) as year_start
    from source

)

select * from final