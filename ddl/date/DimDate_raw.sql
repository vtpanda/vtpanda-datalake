CREATE EXTERNAL TABLE DimDate_raw (
DateKey string,
FullDate string,
DateDisplay string,
DayOfWeek string,
DayOfMonth string,
MonthNumber string,
MonthName string,
QuarterNumber string,
QuarterDisplay string,
YearNumber string,
MonthYear string,
QuarterYear string
  )
ROW FORMAT SERDE
  'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'quoteChar'='\"',
  'separatorChar'=',')
STORED AS TEXTFILE
LOCATION
  's3://vtpanda-data-lake/curated/DimDate/raw/csv'
TBLPROPERTIES (
  'serialization.null.format'='',
  'skip.header.line.count'='1'
)
;



CREATE EXTERNAL TABLE DimDate_parquet (
DateKey int,
FullDate string,
DateDisplay string,
DayOfWeek string,
DayOfMonth int,
MonthNumber int,
MonthName string,
QuarterNumber string,
QuarterDisplay string,
YearNumber int,
MonthYear string,
QuarterYear string
  )
STORED AS PARQUET
LOCATION 's3://vtpanda-data-lake/curated/DimDate/clean/parquet'
tblproperties ("parquet.compress"="SNAPPY")
;
