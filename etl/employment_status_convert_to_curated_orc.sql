
set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.mapred.mode=nonstrict;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2010' as as_of_year
from
census_employment_status_2010;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2011' as as_of_year
from
census_employment_status_2011;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2012' as as_of_year
from
census_employment_status_2012;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2013' as as_of_year
from
census_employment_status_2013;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2014' as as_of_year
from
census_employment_status_2014;

insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2015' as as_of_year
from
census_employment_status_2015;


insert into census_employment_status_curated partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC01,
HC01_MOE_VC01,
HC02_EST_VC01,
HC02_MOE_VC01,
HC03_EST_VC01,
HC03_MOE_VC01,
HC04_EST_VC01,
HC04_MOE_VC01,
'2016' as as_of_year
from
census_employment_status_2016;

msck repair table census_employment_status_curated;
