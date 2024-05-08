WITH inter AS (
SELECT *
FROM {{ ref('stg_raw__adwords') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__bing') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__criteo') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__facebook') }}
)
SELECT
campaign_key||"_"||date_date AS campaign_primary_key,
date_date,
paid_source,
campaign_key,
campaing_name,
ads_cost,
impression,
click
FROM inter