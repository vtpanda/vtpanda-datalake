set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.mapred.mode=nonstrict;

msck repair table fdic.fdic_net_charge_offs_1_4_family_residential_raw;


insert into fdic.fdic_net_charge_offs_1_4_family_residential partition (report_date)
select
cert,
docket,
fed_rssd,
rssdhcr,
name,
city,
stalp,
zip,
repdte,
rundate,
bkclass,
address,
namehcr,
offdom,
offfor,
stmult,
specgrp,
subchaps,
county,
cbsa_metro,
cbsa_metro_name,
estymd,
insdate,
effdate,
mutual,
parcert,
trust,
regagnt,
insagnt1,
fdicdbs,
fdicsupv,
fldoff,
fed,
occdist,
otsregnm,
offoa,
cb,
inst_webaddr,
ntreres,
NTRERSFM,
NTRERSF2,
ntreloc,
report_date
from fdic.fdic_net_charge_offs_1_4_family_residential_raw;

msck repair table fdic.fdic_net_charge_offs_1_4_family_residential;
