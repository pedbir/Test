

with test as (
    SELECT * FROM `dw-test-01-229320`.`Sandbox`.`test`
)

SELECT * 
FROM test
WHERE string_field_0 = '0114 Upplands V�sby'
LIMIT 1000