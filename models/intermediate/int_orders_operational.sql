
SELECT 
date_date,
orders_id,
margin + shipping_fee - logcost - CAST(ship_cost AS float64) AS operational_margin,
revenue,
purchase_cost,
margin
FROM {{ ref('int_orders_margin') }}
JOIN {{ref("stg_raw__ship")}} 
USING (orders_id)