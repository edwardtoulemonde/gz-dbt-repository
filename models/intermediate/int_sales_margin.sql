SELECT *,
CAST(quantity AS float64)*CAST(purchase_price AS float64) AS purchase_cost,
CAST(revenue AS float64) - CAST(quantity AS float64)*CAST(purchase_price AS float64)  AS margin
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id)
