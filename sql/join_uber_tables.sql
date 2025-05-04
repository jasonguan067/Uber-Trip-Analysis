select * from uber_data.uber_trips limit 5;
select * from uber_data.location limit 5;


--join two tables together
DROP TABLE IF EXISTS uber_trips_cleaned
CREATE TABLE uber_data.uber_trips_cleaned
WITH (
  format = 'Parquet',
  external_location = 's3://uber-data-project-jasonguan/clean/uber_trips',
  write_compression = 'SNAPPY'
) AS
SELECT 
  CAST(trip_id AS INT) as trip_id,
  date_parse(pickup_time, '%m/%e/%Y %k:%i') AS pickup_time,
  date_parse(dropoff_time, '%m/%e/%Y %k:%i') AS dropoff_time,
  CAST(passenger_count AS INT) as passenger_count,
  CAST(trip_distance AS DOUBLE) as trip_distance,
  CAST(pulocationid AS INT) as pulocationid,
  CAST(dolocationid AS INT) as dolocationid,
  CAST(fare_amount AS DOUBLE) as fare_amount,
  CAST(surge_fee AS DOUBLE) as surge_fee,
  vehicle,
  payment_type,
  l.location AS pickup_location,
  l.city as pickup_city,
  d.location AS dropoff_location,
  d.city as dropoff_city
FROM uber_data.uber_trips ut
LEFT JOIN uber_data.location l
  ON ut.pulocationid = l.location_id
LEFT JOIN uber_data.location d
  ON ut.dolocationid = d.location_id





describe uber_data.uber_trips 
describe uber_data.uber_trips_cleaned
SELECT * FROM uber_data.uber_trips_cleaned 
