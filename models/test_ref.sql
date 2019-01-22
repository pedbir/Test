{{

    config(materialized='table')
}}

with test as (
    SELECT * FROM {{ ref('test') }}
)

SELECT * 
FROM test
WHERE string_field_0 = '0114 Upplands Väsby'
LIMIT 1000