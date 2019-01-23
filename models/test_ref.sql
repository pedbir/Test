{{

    config(
        materialized='incremental',
        UNIQUE_KEY = 'unique_key'    
    )
}}

with test as (
    SELECT * 
    FROM {{ ref('v_crime') }}
)
SELECT * 
FROM test
{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where timestamp >= (select max(timestamp) from {{ this }})

{% endif %}
