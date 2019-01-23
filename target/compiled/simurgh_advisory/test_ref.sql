

with test as (
    SELECT * 
    FROM `dw-test-01-229320`.`dbt_prototype`.`v_crime`
)
SELECT * 
FROM test


  -- this filter will only be applied on an incremental run
  where timestamp >= (select max(timestamp) from `dw-test-01-229320`.`dbt_prototype`.`test_ref`)

