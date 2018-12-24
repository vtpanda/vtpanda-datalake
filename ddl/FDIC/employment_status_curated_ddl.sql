CREATE external table census_employment_status_curated (
  Id String,
  Id2 String,
  Geography String,
  Total_Estimate_Pop_16_And_Over int,
  Total_MOE_Pop_16_And_Over int,
  Participation_Rate_Estimate_16_And_Over decimal(5,1),
  Participation_Rate_MOE_16_And_Over decimal(5,1),
  Empl_Pop_Ratio_Estimate_16_And_Over decimal(5,1),
  Empl_Pop_Ratio_MOE_16_And_Over decimal(5,1),
  Unempl_Rate_Estimate_16_And_Over decimal(5,1),
  Unempl_Rate_MOE_16_And_Over decimal(5,1)
)
PARTITIONED BY (
  as_of_year int)
STORED AS ORC
LOCATION 's3://vtpanda-data-lake/feeds/census/employment_status/curated/orc'
tblproperties ("orc.compress"="ZLIB");
