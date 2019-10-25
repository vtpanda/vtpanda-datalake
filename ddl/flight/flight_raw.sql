CREATE EXTERNAL TABLE flight_raw (
  flight_year string,
  flight_month string,
  day_of_month string,
  day_of_week string,
  unique_carrier string,
  tail_num string,
  fl_num string,
  origin string,
  dest string,
  crs_dep_time string,
  dep_time string,
  dep_delay string,
  taxi_out string,
  taxi_in string,
  crs_arr_time string,
  arr_time string,
  arr_delay string,
  cancelled string,
  cancellation_code string,
  diverted string,
  crs_elapsed_time string,
  actual_elapsed_time string,
  air_time string,
  distance string,
  carrier_delay string,
  weather_delay string,
  nas_delay string,
  security_delay string,
  late_aircraft_delay string
  )
PARTITIONED BY (
  year string,
  month string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'quoteChar'='\"',
  'separatorChar'=',')
STORED AS TEXTFILE
LOCATION
  's3://vtpanda-data-lake/feeds/airline/flight/raw/csv'
TBLPROPERTIES (
  'serialization.null.format'='',
  'skip.header.line.count'='1'
)
