merge into `dbt_prototype`.`test_ref` as DBT_INTERNAL_DEST
    using (
        select * from (
            

with test as (
    SELECT * 
    FROM `dw-test-01-229320`.`dbt_prototype`.`v_crime`
)
SELECT * 
FROM test


  -- this filter will only be applied on an incremental run
  where timestamp >= (select max(timestamp) from `dw-test-01-229320`.`dbt_prototype`.`test_ref`)


        )
        
    ) as DBT_INTERNAL_SOURCE

    
        on FALSE
    

    

    when not matched then insert
        (unique_key, address, census_tract, clearance_date, clearance_status, council_district_code, description, district, latitude, longitude, location, location_description, primary_type, timestamp, x_coordinate, y_coordinate, year, zipcode)
    values
        (unique_key, address, census_tract, clearance_date, clearance_status, council_district_code, description, district, latitude, longitude, location, location_description, primary_type, timestamp, x_coordinate, y_coordinate, year, zipcode)


     