SELECT 
    date_date,
    ROUND(operational_margin - IFNULL(ads_cost,0),2) AS ads_margin,
    average_basket,
    margin,
    operational_margin,
    IFNULL(ads_cost,0) AS ads_cost
FROM {{ ref('finance_days') }}
LEFT JOIN {{ ref('int_campaigns_day') }}
USING (date_date)