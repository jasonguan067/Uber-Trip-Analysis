DROP TABLE IF EXISTS uber_data.uber_trips;
CREATE EXTERNAL TABLE uber_data.uber_trips (
    trip_id STRING,
    pickup_time STRING,
    dropoff_time STRING,
    passenger_count INT,
    trip_distance DOUBLE,
    PULocationID INT,
    DOLocationID INT,
    fare_amount DOUBLE,
    surge_fee DOUBLE,
    vehicle STRING,
    payment_type STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'

ROP TABLE IF EXISTS uber_data.location;

CREATE EXTERNAL TABLE uber_data.location(
    location_id INT,
    location STRING,
    city STRING
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = "\"",
  "escapeChar" = "\\"
)
LOCATION 's3://uber-data-project-jasonguan/raw/location'
TBLPROPERTIES ('skip.header.line.count'='1');
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = "\"",
  "escapeChar" = "\\"
)
LOCATION 's3://uber-data-project-jasonguan/raw/uber_trips'
TBLPROPERTIES ('skip.header.line.count'='1');
