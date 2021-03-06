set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.mapred.mode=nonstrict;


insert into census.census_educational_attainment partition (as_of_year)
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
HC01_EST_VC02,
HC01_MOE_VC02,
HC02_EST_VC02,
HC02_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC02_EST_VC03,
HC02_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC02_EST_VC04,
HC02_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC02_EST_VC05,
HC02_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC01_EST_VC07,
HC01_MOE_VC07,
HC02_EST_VC07,
HC02_MOE_VC07,
HC03_EST_VC07,
HC03_MOE_VC07,
HC01_EST_VC08,
HC01_MOE_VC08,
HC02_EST_VC08,
HC02_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC02_EST_VC09,
HC02_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC02_EST_VC10,
HC02_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC02_EST_VC11,
HC02_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC02_EST_VC12,
HC02_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC02_EST_VC13,
HC02_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC02_EST_VC14,
HC02_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC01_EST_VC16,
HC01_MOE_VC16,
HC02_EST_VC16,
HC02_MOE_VC16,
HC03_EST_VC16,
HC03_MOE_VC16,
HC01_EST_VC17,
HC01_MOE_VC17,
HC02_EST_VC17,
HC02_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC01_EST_VC19,
HC01_MOE_VC19,
HC02_EST_VC19,
HC02_MOE_VC19,
HC03_EST_VC19,
HC03_MOE_VC19,
HC01_EST_VC20,
HC01_MOE_VC20,
HC02_EST_VC20,
HC02_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC02_EST_VC21,
HC02_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC01_EST_VC23,
HC01_MOE_VC23,
HC02_EST_VC23,
HC02_MOE_VC23,
HC03_EST_VC23,
HC03_MOE_VC23,
HC01_EST_VC24,
HC01_MOE_VC24,
HC02_EST_VC24,
HC02_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC02_EST_VC25,
HC02_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC01_EST_VC27,
HC01_MOE_VC27,
HC02_EST_VC27,
HC02_MOE_VC27,
HC03_EST_VC27,
HC03_MOE_VC27,
HC01_EST_VC28,
HC01_MOE_VC28,
HC02_EST_VC28,
HC02_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC02_EST_VC29,
HC02_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC01_EST_VC31,
HC01_MOE_VC31,
HC02_EST_VC31,
HC02_MOE_VC31,
HC03_EST_VC31,
HC03_MOE_VC31,
HC01_EST_VC32,
HC01_MOE_VC32,
HC02_EST_VC32,
HC02_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC02_EST_VC33,
HC02_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC01_EST_VC37,
HC01_MOE_VC37,
HC02_EST_VC37,
HC02_MOE_VC37,
HC03_EST_VC37,
HC03_MOE_VC37,
HC01_EST_VC38,
HC01_MOE_VC38,
HC02_EST_VC38,
HC02_MOE_VC38,
HC03_EST_VC38,
HC03_MOE_VC38,
HC01_EST_VC39,
HC01_MOE_VC39,
HC02_EST_VC39,
HC02_MOE_VC39,
HC03_EST_VC39,
HC03_MOE_VC39,
HC01_EST_VC40,
HC01_MOE_VC40,
HC02_EST_VC40,
HC02_MOE_VC40,
HC03_EST_VC40,
HC03_MOE_VC40,
HC01_EST_VC44,
HC01_MOE_VC44,
HC02_EST_VC44,
HC02_MOE_VC44,
HC03_EST_VC44,
HC03_MOE_VC44,
HC01_EST_VC45,
HC01_MOE_VC45,
HC02_EST_VC45,
HC02_MOE_VC45,
HC03_EST_VC45,
HC03_MOE_VC45,
HC01_EST_VC46,
HC01_MOE_VC46,
HC02_EST_VC46,
HC02_MOE_VC46,
HC03_EST_VC46,
HC03_MOE_VC46,
HC01_EST_VC47,
HC01_MOE_VC47,
HC02_EST_VC47,
HC02_MOE_VC47,
HC03_EST_VC47,
HC03_MOE_VC47,
HC01_EST_VC48,
HC01_MOE_VC48,
HC02_EST_VC48,
HC02_MOE_VC48,
HC03_EST_VC48,
HC03_MOE_VC48,
HC01_EST_VC49,
HC01_MOE_VC49,
HC02_EST_VC49,
HC02_MOE_VC49,
HC03_EST_VC49,
HC03_MOE_VC49,
HC01_EST_VC52,
HC01_MOE_VC52,
HC02_EST_VC52,
HC02_MOE_VC52,
HC03_EST_VC52,
HC03_MOE_VC52,
'2010' as as_of_year
from
census.census_educational_attainment_raw_2010;

insert into census.census_educational_attainment partition (as_of_year)
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
HC01_EST_VC02,
HC01_MOE_VC02,
HC02_EST_VC02,
HC02_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC02_EST_VC03,
HC02_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC02_EST_VC04,
HC02_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC02_EST_VC05,
HC02_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC01_EST_VC07,
HC01_MOE_VC07,
HC02_EST_VC07,
HC02_MOE_VC07,
HC03_EST_VC07,
HC03_MOE_VC07,
HC01_EST_VC08,
HC01_MOE_VC08,
HC02_EST_VC08,
HC02_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC02_EST_VC09,
HC02_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC02_EST_VC10,
HC02_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC02_EST_VC11,
HC02_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC02_EST_VC12,
HC02_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC02_EST_VC13,
HC02_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC02_EST_VC14,
HC02_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC01_EST_VC16,
HC01_MOE_VC16,
HC02_EST_VC16,
HC02_MOE_VC16,
HC03_EST_VC16,
HC03_MOE_VC16,
HC01_EST_VC17,
HC01_MOE_VC17,
HC02_EST_VC17,
HC02_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC01_EST_VC19,
HC01_MOE_VC19,
HC02_EST_VC19,
HC02_MOE_VC19,
HC03_EST_VC19,
HC03_MOE_VC19,
HC01_EST_VC20,
HC01_MOE_VC20,
HC02_EST_VC20,
HC02_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC02_EST_VC21,
HC02_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC01_EST_VC23,
HC01_MOE_VC23,
HC02_EST_VC23,
HC02_MOE_VC23,
HC03_EST_VC23,
HC03_MOE_VC23,
HC01_EST_VC24,
HC01_MOE_VC24,
HC02_EST_VC24,
HC02_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC02_EST_VC25,
HC02_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC01_EST_VC27,
HC01_MOE_VC27,
HC02_EST_VC27,
HC02_MOE_VC27,
HC03_EST_VC27,
HC03_MOE_VC27,
HC01_EST_VC28,
HC01_MOE_VC28,
HC02_EST_VC28,
HC02_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC02_EST_VC29,
HC02_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC01_EST_VC31,
HC01_MOE_VC31,
HC02_EST_VC31,
HC02_MOE_VC31,
HC03_EST_VC31,
HC03_MOE_VC31,
HC01_EST_VC32,
HC01_MOE_VC32,
HC02_EST_VC32,
HC02_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC02_EST_VC33,
HC02_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC01_EST_VC37,
HC01_MOE_VC37,
HC02_EST_VC37,
HC02_MOE_VC37,
HC03_EST_VC37,
HC03_MOE_VC37,
HC01_EST_VC38,
HC01_MOE_VC38,
HC02_EST_VC38,
HC02_MOE_VC38,
HC03_EST_VC38,
HC03_MOE_VC38,
HC01_EST_VC39,
HC01_MOE_VC39,
HC02_EST_VC39,
HC02_MOE_VC39,
HC03_EST_VC39,
HC03_MOE_VC39,
HC01_EST_VC40,
HC01_MOE_VC40,
HC02_EST_VC40,
HC02_MOE_VC40,
HC03_EST_VC40,
HC03_MOE_VC40,
HC01_EST_VC44,
HC01_MOE_VC44,
HC02_EST_VC44,
HC02_MOE_VC44,
HC03_EST_VC44,
HC03_MOE_VC44,
HC01_EST_VC45,
HC01_MOE_VC45,
HC02_EST_VC45,
HC02_MOE_VC45,
HC03_EST_VC45,
HC03_MOE_VC45,
HC01_EST_VC46,
HC01_MOE_VC46,
HC02_EST_VC46,
HC02_MOE_VC46,
HC03_EST_VC46,
HC03_MOE_VC46,
HC01_EST_VC47,
HC01_MOE_VC47,
HC02_EST_VC47,
HC02_MOE_VC47,
HC03_EST_VC47,
HC03_MOE_VC47,
HC01_EST_VC48,
HC01_MOE_VC48,
HC02_EST_VC48,
HC02_MOE_VC48,
HC03_EST_VC48,
HC03_MOE_VC48,
HC01_EST_VC49,
HC01_MOE_VC49,
HC02_EST_VC49,
HC02_MOE_VC49,
HC03_EST_VC49,
HC03_MOE_VC49,
HC01_EST_VC52,
HC01_MOE_VC52,
HC02_EST_VC52,
HC02_MOE_VC52,
HC03_EST_VC52,
HC03_MOE_VC52,
'2011' as as_of_year
from
census.census_educational_attainment_raw_2011;

insert into census.census_educational_attainment partition (as_of_year)
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
HC01_EST_VC02,
HC01_MOE_VC02,
HC02_EST_VC02,
HC02_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC02_EST_VC03,
HC02_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC02_EST_VC04,
HC02_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC02_EST_VC05,
HC02_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC01_EST_VC07,
HC01_MOE_VC07,
HC02_EST_VC07,
HC02_MOE_VC07,
HC03_EST_VC07,
HC03_MOE_VC07,
HC01_EST_VC08,
HC01_MOE_VC08,
HC02_EST_VC08,
HC02_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC02_EST_VC09,
HC02_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC02_EST_VC10,
HC02_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC02_EST_VC11,
HC02_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC02_EST_VC12,
HC02_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC02_EST_VC13,
HC02_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC02_EST_VC14,
HC02_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC01_EST_VC16,
HC01_MOE_VC16,
HC02_EST_VC16,
HC02_MOE_VC16,
HC03_EST_VC16,
HC03_MOE_VC16,
HC01_EST_VC17,
HC01_MOE_VC17,
HC02_EST_VC17,
HC02_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC01_EST_VC19,
HC01_MOE_VC19,
HC02_EST_VC19,
HC02_MOE_VC19,
HC03_EST_VC19,
HC03_MOE_VC19,
HC01_EST_VC20,
HC01_MOE_VC20,
HC02_EST_VC20,
HC02_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC02_EST_VC21,
HC02_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC01_EST_VC23,
HC01_MOE_VC23,
HC02_EST_VC23,
HC02_MOE_VC23,
HC03_EST_VC23,
HC03_MOE_VC23,
HC01_EST_VC24,
HC01_MOE_VC24,
HC02_EST_VC24,
HC02_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC02_EST_VC25,
HC02_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC01_EST_VC27,
HC01_MOE_VC27,
HC02_EST_VC27,
HC02_MOE_VC27,
HC03_EST_VC27,
HC03_MOE_VC27,
HC01_EST_VC28,
HC01_MOE_VC28,
HC02_EST_VC28,
HC02_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC02_EST_VC29,
HC02_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC01_EST_VC31,
HC01_MOE_VC31,
HC02_EST_VC31,
HC02_MOE_VC31,
HC03_EST_VC31,
HC03_MOE_VC31,
HC01_EST_VC32,
HC01_MOE_VC32,
HC02_EST_VC32,
HC02_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC02_EST_VC33,
HC02_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC01_EST_VC37,
HC01_MOE_VC37,
HC02_EST_VC37,
HC02_MOE_VC37,
HC03_EST_VC37,
HC03_MOE_VC37,
HC01_EST_VC38,
HC01_MOE_VC38,
HC02_EST_VC38,
HC02_MOE_VC38,
HC03_EST_VC38,
HC03_MOE_VC38,
HC01_EST_VC39,
HC01_MOE_VC39,
HC02_EST_VC39,
HC02_MOE_VC39,
HC03_EST_VC39,
HC03_MOE_VC39,
HC01_EST_VC40,
HC01_MOE_VC40,
HC02_EST_VC40,
HC02_MOE_VC40,
HC03_EST_VC40,
HC03_MOE_VC40,
HC01_EST_VC44,
HC01_MOE_VC44,
HC02_EST_VC44,
HC02_MOE_VC44,
HC03_EST_VC44,
HC03_MOE_VC44,
HC01_EST_VC45,
HC01_MOE_VC45,
HC02_EST_VC45,
HC02_MOE_VC45,
HC03_EST_VC45,
HC03_MOE_VC45,
HC01_EST_VC46,
HC01_MOE_VC46,
HC02_EST_VC46,
HC02_MOE_VC46,
HC03_EST_VC46,
HC03_MOE_VC46,
HC01_EST_VC47,
HC01_MOE_VC47,
HC02_EST_VC47,
HC02_MOE_VC47,
HC03_EST_VC47,
HC03_MOE_VC47,
HC01_EST_VC48,
HC01_MOE_VC48,
HC02_EST_VC48,
HC02_MOE_VC48,
HC03_EST_VC48,
HC03_MOE_VC48,
HC01_EST_VC49,
HC01_MOE_VC49,
HC02_EST_VC49,
HC02_MOE_VC49,
HC03_EST_VC49,
HC03_MOE_VC49,
HC01_EST_VC52,
HC01_MOE_VC52,
HC02_EST_VC52,
HC02_MOE_VC52,
HC03_EST_VC52,
HC03_MOE_VC52,
'2012' as as_of_year
from
census.census_educational_attainment_raw_2012;

insert into census.census_educational_attainment partition (as_of_year)
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
HC01_EST_VC02,
HC01_MOE_VC02,
HC02_EST_VC02,
HC02_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC02_EST_VC03,
HC02_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC02_EST_VC04,
HC02_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC02_EST_VC05,
HC02_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC01_EST_VC07,
HC01_MOE_VC07,
HC02_EST_VC07,
HC02_MOE_VC07,
HC03_EST_VC07,
HC03_MOE_VC07,
HC01_EST_VC08,
HC01_MOE_VC08,
HC02_EST_VC08,
HC02_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC02_EST_VC09,
HC02_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC02_EST_VC10,
HC02_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC02_EST_VC11,
HC02_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC02_EST_VC12,
HC02_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC02_EST_VC13,
HC02_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC02_EST_VC14,
HC02_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC01_EST_VC16,
HC01_MOE_VC16,
HC02_EST_VC16,
HC02_MOE_VC16,
HC03_EST_VC16,
HC03_MOE_VC16,
HC01_EST_VC17,
HC01_MOE_VC17,
HC02_EST_VC17,
HC02_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC01_EST_VC19,
HC01_MOE_VC19,
HC02_EST_VC19,
HC02_MOE_VC19,
HC03_EST_VC19,
HC03_MOE_VC19,
HC01_EST_VC20,
HC01_MOE_VC20,
HC02_EST_VC20,
HC02_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC02_EST_VC21,
HC02_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC01_EST_VC23,
HC01_MOE_VC23,
HC02_EST_VC23,
HC02_MOE_VC23,
HC03_EST_VC23,
HC03_MOE_VC23,
HC01_EST_VC24,
HC01_MOE_VC24,
HC02_EST_VC24,
HC02_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC02_EST_VC25,
HC02_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC01_EST_VC27,
HC01_MOE_VC27,
HC02_EST_VC27,
HC02_MOE_VC27,
HC03_EST_VC27,
HC03_MOE_VC27,
HC01_EST_VC28,
HC01_MOE_VC28,
HC02_EST_VC28,
HC02_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC02_EST_VC29,
HC02_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC01_EST_VC31,
HC01_MOE_VC31,
HC02_EST_VC31,
HC02_MOE_VC31,
HC03_EST_VC31,
HC03_MOE_VC31,
HC01_EST_VC32,
HC01_MOE_VC32,
HC02_EST_VC32,
HC02_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC02_EST_VC33,
HC02_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC01_EST_VC36,
HC01_MOE_VC36,
HC02_EST_VC36,
HC02_MOE_VC36,
HC03_EST_VC36,
HC03_MOE_VC36,
HC01_EST_VC37,
HC01_MOE_VC37,
HC02_EST_VC37,
HC02_MOE_VC37,
HC03_EST_VC37,
HC03_MOE_VC37,
HC01_EST_VC38,
HC01_MOE_VC38,
HC02_EST_VC38,
HC02_MOE_VC38,
HC03_EST_VC38,
HC03_MOE_VC38,
HC01_EST_VC39,
HC01_MOE_VC39,
HC02_EST_VC39,
HC02_MOE_VC39,
HC03_EST_VC39,
HC03_MOE_VC39,
HC01_EST_VC42,
HC01_MOE_VC42,
HC02_EST_VC42,
HC02_MOE_VC42,
HC03_EST_VC42,
HC03_MOE_VC42,
HC01_EST_VC43,
HC01_MOE_VC43,
HC02_EST_VC43,
HC02_MOE_VC43,
HC03_EST_VC43,
HC03_MOE_VC43,
HC01_EST_VC44,
HC01_MOE_VC44,
HC02_EST_VC44,
HC02_MOE_VC44,
HC03_EST_VC44,
HC03_MOE_VC44,
HC01_EST_VC45,
HC01_MOE_VC45,
HC02_EST_VC45,
HC02_MOE_VC45,
HC03_EST_VC45,
HC03_MOE_VC45,
HC01_EST_VC46,
HC01_MOE_VC46,
HC02_EST_VC46,
HC02_MOE_VC46,
HC03_EST_VC46,
HC03_MOE_VC46,
HC01_EST_VC47,
HC01_MOE_VC47,
HC02_EST_VC47,
HC02_MOE_VC47,
HC03_EST_VC47,
HC03_MOE_VC47,
HC01_EST_VC50,
HC01_MOE_VC50,
HC02_EST_VC50,
HC02_MOE_VC50,
HC03_EST_VC50,
HC03_MOE_VC50,
'2013' as as_of_year
from
census.census_educational_attainment_raw_2013;

insert into census.census_educational_attainment partition (as_of_year)
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
HC01_EST_VC02,
HC01_MOE_VC02,
HC02_EST_VC02,
HC02_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC02_EST_VC03,
HC02_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC02_EST_VC04,
HC02_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC02_EST_VC05,
HC02_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC01_EST_VC07,
HC01_MOE_VC07,
HC02_EST_VC07,
HC02_MOE_VC07,
HC03_EST_VC07,
HC03_MOE_VC07,
HC01_EST_VC08,
HC01_MOE_VC08,
HC02_EST_VC08,
HC02_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC02_EST_VC09,
HC02_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC02_EST_VC10,
HC02_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC02_EST_VC11,
HC02_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC02_EST_VC12,
HC02_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC02_EST_VC13,
HC02_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC02_EST_VC14,
HC02_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC01_EST_VC16,
HC01_MOE_VC16,
HC02_EST_VC16,
HC02_MOE_VC16,
HC03_EST_VC16,
HC03_MOE_VC16,
HC01_EST_VC17,
HC01_MOE_VC17,
HC02_EST_VC17,
HC02_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC01_EST_VC19,
HC01_MOE_VC19,
HC02_EST_VC19,
HC02_MOE_VC19,
HC03_EST_VC19,
HC03_MOE_VC19,
HC01_EST_VC20,
HC01_MOE_VC20,
HC02_EST_VC20,
HC02_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC02_EST_VC21,
HC02_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC01_EST_VC23,
HC01_MOE_VC23,
HC02_EST_VC23,
HC02_MOE_VC23,
HC03_EST_VC23,
HC03_MOE_VC23,
HC01_EST_VC24,
HC01_MOE_VC24,
HC02_EST_VC24,
HC02_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC02_EST_VC25,
HC02_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC01_EST_VC27,
HC01_MOE_VC27,
HC02_EST_VC27,
HC02_MOE_VC27,
HC03_EST_VC27,
HC03_MOE_VC27,
HC01_EST_VC28,
HC01_MOE_VC28,
HC02_EST_VC28,
HC02_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC02_EST_VC29,
HC02_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC01_EST_VC31,
HC01_MOE_VC31,
HC02_EST_VC31,
HC02_MOE_VC31,
HC03_EST_VC31,
HC03_MOE_VC31,
HC01_EST_VC32,
HC01_MOE_VC32,
HC02_EST_VC32,
HC02_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC02_EST_VC33,
HC02_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC01_EST_VC36,
HC01_MOE_VC36,
HC02_EST_VC36,
HC02_MOE_VC36,
HC03_EST_VC36,
HC03_MOE_VC36,
HC01_EST_VC37,
HC01_MOE_VC37,
HC02_EST_VC37,
HC02_MOE_VC37,
HC03_EST_VC37,
HC03_MOE_VC37,
HC01_EST_VC38,
HC01_MOE_VC38,
HC02_EST_VC38,
HC02_MOE_VC38,
HC03_EST_VC38,
HC03_MOE_VC38,
HC01_EST_VC39,
HC01_MOE_VC39,
HC02_EST_VC39,
HC02_MOE_VC39,
HC03_EST_VC39,
HC03_MOE_VC39,
HC01_EST_VC42,
HC01_MOE_VC42,
HC02_EST_VC42,
HC02_MOE_VC42,
HC03_EST_VC42,
HC03_MOE_VC42,
HC01_EST_VC43,
HC01_MOE_VC43,
HC02_EST_VC43,
HC02_MOE_VC43,
HC03_EST_VC43,
HC03_MOE_VC43,
HC01_EST_VC44,
HC01_MOE_VC44,
HC02_EST_VC44,
HC02_MOE_VC44,
HC03_EST_VC44,
HC03_MOE_VC44,
HC01_EST_VC45,
HC01_MOE_VC45,
HC02_EST_VC45,
HC02_MOE_VC45,
HC03_EST_VC45,
HC03_MOE_VC45,
HC01_EST_VC46,
HC01_MOE_VC46,
HC02_EST_VC46,
HC02_MOE_VC46,
HC03_EST_VC46,
HC03_MOE_VC46,
HC01_EST_VC47,
HC01_MOE_VC47,
HC02_EST_VC47,
HC02_MOE_VC47,
HC03_EST_VC47,
HC03_MOE_VC47,
HC01_EST_VC50,
HC01_MOE_VC50,
HC02_EST_VC50,
HC02_MOE_VC50,
HC03_EST_VC50,
HC03_MOE_VC50,
'2014' as as_of_year
from
census.census_educational_attainment_raw_2014;

insert into census.census_educational_attainment partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC02,
HC01_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC05_EST_VC02,
HC05_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC05_EST_VC03,
HC05_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC05_EST_VC04,
HC05_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC05_EST_VC05,
HC05_MOE_VC05,
HC01_EST_VC06,
HC01_MOE_VC06,
HC03_EST_VC06,
HC03_MOE_VC06,
HC05_EST_VC06,
HC05_MOE_VC06,
HC01_EST_VC08,
HC01_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC05_EST_VC08,
HC05_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC05_EST_VC09,
HC05_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC05_EST_VC10,
HC05_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC05_EST_VC11,
HC05_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC05_EST_VC12,
HC05_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC05_EST_VC13,
HC05_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC05_EST_VC14,
HC05_MOE_VC14,
HC01_EST_VC15,
HC01_MOE_VC15,
HC03_EST_VC15,
HC03_MOE_VC15,
HC05_EST_VC15,
HC05_MOE_VC15,
HC01_EST_VC17,
HC01_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC05_EST_VC17,
HC05_MOE_VC17,
HC01_EST_VC18,
HC01_MOE_VC18,
HC03_EST_VC18,
HC03_MOE_VC18,
HC05_EST_VC18,
HC05_MOE_VC18,
HC01_EST_VC20,
HC01_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC05_EST_VC20,
HC05_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC05_EST_VC21,
HC05_MOE_VC21,
HC01_EST_VC22,
HC01_MOE_VC22,
HC03_EST_VC22,
HC03_MOE_VC22,
HC05_EST_VC22,
HC05_MOE_VC22,
HC01_EST_VC24,
HC01_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC05_EST_VC24,
HC05_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC05_EST_VC25,
HC05_MOE_VC25,
HC01_EST_VC26,
HC01_MOE_VC26,
HC03_EST_VC26,
HC03_MOE_VC26,
HC05_EST_VC26,
HC05_MOE_VC26,
HC01_EST_VC28,
HC01_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC05_EST_VC28,
HC05_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC05_EST_VC29,
HC05_MOE_VC29,
HC01_EST_VC30,
HC01_MOE_VC30,
HC03_EST_VC30,
HC03_MOE_VC30,
HC05_EST_VC30,
HC05_MOE_VC30,
HC01_EST_VC32,
HC01_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC05_EST_VC32,
HC05_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC05_EST_VC33,
HC05_MOE_VC33,
HC01_EST_VC34,
HC01_MOE_VC34,
HC03_EST_VC34,
HC03_MOE_VC34,
HC05_EST_VC34,
HC05_MOE_VC34,
HC01_EST_VC74,
HC01_MOE_VC74,
HC03_EST_VC74,
HC03_MOE_VC74,
HC05_EST_VC74,
HC05_MOE_VC74,
HC01_EST_VC75,
HC01_MOE_VC75,
HC03_EST_VC75,
HC03_MOE_VC75,
HC05_EST_VC75,
HC05_MOE_VC75,
HC01_EST_VC76,
HC01_MOE_VC76,
HC03_EST_VC76,
HC03_MOE_VC76,
HC05_EST_VC76,
HC05_MOE_VC76,
HC01_EST_VC77,
HC01_MOE_VC77,
HC03_EST_VC77,
HC03_MOE_VC77,
HC05_EST_VC77,
HC05_MOE_VC77,
HC01_EST_VC80,
HC01_MOE_VC80,
HC03_EST_VC80,
HC03_MOE_VC80,
HC05_EST_VC80,
HC05_MOE_VC80,
HC01_EST_VC81,
HC01_MOE_VC81,
HC03_EST_VC81,
HC03_MOE_VC81,
HC05_EST_VC81,
HC05_MOE_VC81,
HC01_EST_VC82,
HC01_MOE_VC82,
HC03_EST_VC82,
HC03_MOE_VC82,
HC05_EST_VC82,
HC05_MOE_VC82,
HC01_EST_VC83,
HC01_MOE_VC83,
HC03_EST_VC83,
HC03_MOE_VC83,
HC05_EST_VC83,
HC05_MOE_VC83,
HC01_EST_VC84,
HC01_MOE_VC84,
HC03_EST_VC84,
HC03_MOE_VC84,
HC05_EST_VC84,
HC05_MOE_VC84,
HC01_EST_VC85,
HC01_MOE_VC85,
HC03_EST_VC85,
HC03_MOE_VC85,
HC05_EST_VC85,
HC05_MOE_VC85,
'',
'',
'',
'',
'',
'',
'2015' as as_of_year
from
census.census_educational_attainment_raw_2015;

insert into census.census_educational_attainment partition (as_of_year)
select
GEO_id,
GEO_id2,
GEO_display_label,
HC01_EST_VC02,
HC01_MOE_VC02,
HC03_EST_VC02,
HC03_MOE_VC02,
HC05_EST_VC02,
HC05_MOE_VC02,
HC01_EST_VC03,
HC01_MOE_VC03,
HC03_EST_VC03,
HC03_MOE_VC03,
HC05_EST_VC03,
HC05_MOE_VC03,
HC01_EST_VC04,
HC01_MOE_VC04,
HC03_EST_VC04,
HC03_MOE_VC04,
HC05_EST_VC04,
HC05_MOE_VC04,
HC01_EST_VC05,
HC01_MOE_VC05,
HC03_EST_VC05,
HC03_MOE_VC05,
HC05_EST_VC05,
HC05_MOE_VC05,
HC01_EST_VC06,
HC01_MOE_VC06,
HC03_EST_VC06,
HC03_MOE_VC06,
HC05_EST_VC06,
HC05_MOE_VC06,
HC01_EST_VC08,
HC01_MOE_VC08,
HC03_EST_VC08,
HC03_MOE_VC08,
HC05_EST_VC08,
HC05_MOE_VC08,
HC01_EST_VC09,
HC01_MOE_VC09,
HC03_EST_VC09,
HC03_MOE_VC09,
HC05_EST_VC09,
HC05_MOE_VC09,
HC01_EST_VC10,
HC01_MOE_VC10,
HC03_EST_VC10,
HC03_MOE_VC10,
HC05_EST_VC10,
HC05_MOE_VC10,
HC01_EST_VC11,
HC01_MOE_VC11,
HC03_EST_VC11,
HC03_MOE_VC11,
HC05_EST_VC11,
HC05_MOE_VC11,
HC01_EST_VC12,
HC01_MOE_VC12,
HC03_EST_VC12,
HC03_MOE_VC12,
HC05_EST_VC12,
HC05_MOE_VC12,
HC01_EST_VC13,
HC01_MOE_VC13,
HC03_EST_VC13,
HC03_MOE_VC13,
HC05_EST_VC13,
HC05_MOE_VC13,
HC01_EST_VC14,
HC01_MOE_VC14,
HC03_EST_VC14,
HC03_MOE_VC14,
HC05_EST_VC14,
HC05_MOE_VC14,
HC01_EST_VC15,
HC01_MOE_VC15,
HC03_EST_VC15,
HC03_MOE_VC15,
HC05_EST_VC15,
HC05_MOE_VC15,
HC01_EST_VC17,
HC01_MOE_VC17,
HC03_EST_VC17,
HC03_MOE_VC17,
HC05_EST_VC17,
HC05_MOE_VC17,
HC01_EST_VC18,
HC01_MOE_VC18,
HC03_EST_VC18,
HC03_MOE_VC18,
HC05_EST_VC18,
HC05_MOE_VC18,
HC01_EST_VC20,
HC01_MOE_VC20,
HC03_EST_VC20,
HC03_MOE_VC20,
HC05_EST_VC20,
HC05_MOE_VC20,
HC01_EST_VC21,
HC01_MOE_VC21,
HC03_EST_VC21,
HC03_MOE_VC21,
HC05_EST_VC21,
HC05_MOE_VC21,
HC01_EST_VC22,
HC01_MOE_VC22,
HC03_EST_VC22,
HC03_MOE_VC22,
HC05_EST_VC22,
HC05_MOE_VC22,
HC01_EST_VC24,
HC01_MOE_VC24,
HC03_EST_VC24,
HC03_MOE_VC24,
HC05_EST_VC24,
HC05_MOE_VC24,
HC01_EST_VC25,
HC01_MOE_VC25,
HC03_EST_VC25,
HC03_MOE_VC25,
HC05_EST_VC25,
HC05_MOE_VC25,
HC01_EST_VC26,
HC01_MOE_VC26,
HC03_EST_VC26,
HC03_MOE_VC26,
HC05_EST_VC26,
HC05_MOE_VC26,
HC01_EST_VC28,
HC01_MOE_VC28,
HC03_EST_VC28,
HC03_MOE_VC28,
HC05_EST_VC28,
HC05_MOE_VC28,
HC01_EST_VC29,
HC01_MOE_VC29,
HC03_EST_VC29,
HC03_MOE_VC29,
HC05_EST_VC29,
HC05_MOE_VC29,
HC01_EST_VC30,
HC01_MOE_VC30,
HC03_EST_VC30,
HC03_MOE_VC30,
HC05_EST_VC30,
HC05_MOE_VC30,
HC01_EST_VC32,
HC01_MOE_VC32,
HC03_EST_VC32,
HC03_MOE_VC32,
HC05_EST_VC32,
HC05_MOE_VC32,
HC01_EST_VC33,
HC01_MOE_VC33,
HC03_EST_VC33,
HC03_MOE_VC33,
HC05_EST_VC33,
HC05_MOE_VC33,
HC01_EST_VC34,
HC01_MOE_VC34,
HC03_EST_VC34,
HC03_MOE_VC34,
HC05_EST_VC34,
HC05_MOE_VC34,
HC01_EST_VC74,
HC01_MOE_VC74,
HC03_EST_VC74,
HC03_MOE_VC74,
HC05_EST_VC74,
HC05_MOE_VC74,
HC01_EST_VC75,
HC01_MOE_VC75,
HC03_EST_VC75,
HC03_MOE_VC75,
HC05_EST_VC75,
HC05_MOE_VC75,
HC01_EST_VC76,
HC01_MOE_VC76,
HC03_EST_VC76,
HC03_MOE_VC76,
HC05_EST_VC76,
HC05_MOE_VC76,
HC01_EST_VC77,
HC01_MOE_VC77,
HC03_EST_VC77,
HC03_MOE_VC77,
HC05_EST_VC77,
HC05_MOE_VC77,
HC01_EST_VC80,
HC01_MOE_VC80,
HC03_EST_VC80,
HC03_MOE_VC80,
HC05_EST_VC80,
HC05_MOE_VC80,
HC01_EST_VC81,
HC01_MOE_VC81,
HC03_EST_VC81,
HC03_MOE_VC81,
HC05_EST_VC81,
HC05_MOE_VC81,
HC01_EST_VC82,
HC01_MOE_VC82,
HC03_EST_VC82,
HC03_MOE_VC82,
HC05_EST_VC82,
HC05_MOE_VC82,
HC01_EST_VC83,
HC01_MOE_VC83,
HC03_EST_VC83,
HC03_MOE_VC83,
HC05_EST_VC83,
HC05_MOE_VC83,
HC01_EST_VC84,
HC01_MOE_VC84,
HC03_EST_VC84,
HC03_MOE_VC84,
HC05_EST_VC84,
HC05_MOE_VC84,
HC01_EST_VC85,
HC01_MOE_VC85,
HC03_EST_VC85,
HC03_MOE_VC85,
HC05_EST_VC85,
HC05_MOE_VC85,
'',
'',
'',
'',
'',
'',
'2016' as as_of_year
from
census.census_educational_attainment_raw_2016;

msck repair table census_educational_attainment;
