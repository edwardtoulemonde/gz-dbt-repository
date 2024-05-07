SELECT 
orders_id,
date_date,
SUM(revenue) AS revenue,
SUM(quantity) AS quantity,
SUM(purchase_cost) as purchase_cost,
SUM(margin) AS margin
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id, date_date