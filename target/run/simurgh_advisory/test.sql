create or replace view `Sandbox`.`test` as (
    SELECT string_field_0, string_field_1, string_field_2 FROM `dw-test-01-229320.Sandbox.SwedenPopulation` LIMIT 1000
  );