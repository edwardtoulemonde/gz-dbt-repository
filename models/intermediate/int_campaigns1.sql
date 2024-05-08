WITH inter AS (
  {{ dbt_utils.union_relations(
      relations=[
          ref('stg_raw__adwords'),
          ref('stg_raw__bing'),
          ref('stg_raw__criteo'),
          ref('stg_raw__facebook')
      ]
  ) }}
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