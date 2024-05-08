SELECT 
DATE_TRUNC(date_date, MONTH) AS month,
SUM(ads_margin) AS ads_margin,
SUM(average_basket) AS average_basket,
SUM(margin) AS margin,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY month
ORDER BY month DESC