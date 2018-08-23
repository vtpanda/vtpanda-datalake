import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

## @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)
## @type: DataSource
## @args: [database = "fdic", table_name = "fdic_net_charge_offs_1_4_family_residential_raw", transformation_ctx = "datasource0"]
## @return: datasource0
## @inputs: []
datasource0 = glueContext.create_dynamic_frame.from_catalog(database = "fdic", table_name = "fdic_net_charge_offs_1_4_family_residential_raw", push_down_predicate = "report_date = 20100331", transformation_ctx = "datasource0")
## @type: ApplyMapping
## @args: [mapping = [("cert", "string", "cert", "string"), ("docket", "string", "docket", "string"), ("fed_rssd", "string", "fed_rssd", "string"), ("rssdhcr", "string", "rssdhcr", "string"), ("name", "string", "name", "string"), ("city", "string", "city", "string"), ("stalp", "string", "stalp", "string"), ("zip", "string", "zip", "string"), ("repdte", "string", "repdte", "string"), ("rundate", "string", "rundate", "string"), ("bkclass", "string", "bkclass", "string"), ("address", "string", "address", "string"), ("namehcr", "string", "namehcr", "string"), ("offdom", "string", "offdom", "string"), ("offfor", "string", "offfor", "string"), ("stmult", "string", "stmult", "string"), ("specgrp", "string", "specgrp", "string"), ("subchaps", "string", "subchaps", "string"), ("county", "string", "county", "string"), ("cbsa_metro", "string", "cbsa_metro", "string"), ("cbsa_metro_name", "string", "cbsa_metro_name", "string"), ("estymd", "string", "estymd", "string"), ("insdate", "string", "insdate", "string"), ("effdate", "string", "effdate", "string"), ("mutual", "string", "mutual", "string"), ("parcert", "string", "parcert", "string"), ("trust", "string", "trust", "string"), ("regagnt", "string", "regagnt", "string"), ("insagnt1", "string", "insagnt1", "string"), ("fdicdbs", "string", "fdicdbs", "string"), ("fdicsupv", "string", "fdicsupv", "string"), ("fldoff", "string", "fldoff", "string"), ("fed", "string", "fed", "string"), ("occdist", "string", "occdist", "string"), ("otsregnm", "string", "otsregnm", "string"), ("offoa", "string", "offoa", "string"), ("cb", "string", "cb", "string"), ("inst_webaddr", "string", "inst_webaddr", "string"), ("ntreres", "string", "ntreres", "string"), ("ntrersfm", "string", "ntrersfm", "string"), ("ntrersf2", "string", "ntrersf2", "string"), ("ntreloc", "string", "ntreloc", "string"), ("report_date", "string", "report_date", "string")], transformation_ctx = "applymapping1"]
## @return: applymapping1
## @inputs: [frame = datasource0]
applymapping1 = ApplyMapping.apply(frame = datasource0, mappings = [("cert", "string", "cert", "string"), ("docket", "string", "docket", "string"), ("fed_rssd", "string", "fed_rssd", "string"), ("rssdhcr", "string", "rssdhcr", "string"), ("name", "string", "name", "string"), ("city", "string", "city", "string"), ("stalp", "string", "stalp", "string"), ("zip", "string", "zip", "string"), ("repdte", "string", "repdte", "string"), ("rundate", "string", "rundate", "string"), ("bkclass", "string", "bkclass", "string"), ("address", "string", "address", "string"), ("namehcr", "string", "namehcr", "string"), ("offdom", "string", "offdom", "string"), ("offfor", "string", "offfor", "string"), ("stmult", "string", "stmult", "string"), ("specgrp", "string", "specgrp", "string"), ("subchaps", "string", "subchaps", "string"), ("county", "string", "county", "string"), ("cbsa_metro", "string", "cbsa_metro", "string"), ("cbsa_metro_name", "string", "cbsa_metro_name", "string"), ("estymd", "string", "estymd", "string"), ("insdate", "string", "insdate", "string"), ("effdate", "string", "effdate", "string"), ("mutual", "string", "mutual", "string"), ("parcert", "string", "parcert", "string"), ("trust", "string", "trust", "string"), ("regagnt", "string", "regagnt", "string"), ("insagnt1", "string", "insagnt1", "string"), ("fdicdbs", "string", "fdicdbs", "string"), ("fdicsupv", "string", "fdicsupv", "string"), ("fldoff", "string", "fldoff", "string"), ("fed", "string", "fed", "string"), ("occdist", "string", "occdist", "string"), ("otsregnm", "string", "otsregnm", "string"), ("offoa", "string", "offoa", "string"), ("cb", "string", "cb", "string"), ("inst_webaddr", "string", "inst_webaddr", "string"), ("ntreres", "string", "ntreres", "string"), ("ntrersfm", "string", "ntrersfm", "string"), ("ntrersf2", "string", "ntrersf2", "string"), ("ntreloc", "string", "ntreloc", "string"), ("report_date", "string", "report_date", "string")], transformation_ctx = "applymapping1")
## @type: SelectFields
## @args: [paths = ["cert", "docket", "fed_rssd", "rssdhcr", "name", "city", "stalp", "zip", "repdte", "rundate", "bkclass", "address", "namehcr", "offdom", "offfor", "stmult", "specgrp", "subchaps", "county", "cbsa_metro", "cbsa_metro_name", "estymd", "insdate", "effdate", "mutual", "parcert", "trust", "regagnt", "insagnt1", "fdicdbs", "fdicsupv", "fldoff", "fed", "occdist", "otsregnm", "offoa", "cb", "inst_webaddr", "ntreres", "ntrersfm", "ntrersf2", "ntreloc", "report_date"], transformation_ctx = "selectfields2"]
## @return: selectfields2
## @inputs: [frame = applymapping1]
selectfields2 = SelectFields.apply(frame = applymapping1, paths = ["cert", "docket", "fed_rssd", "rssdhcr", "name", "city", "stalp", "zip", "repdte", "rundate", "bkclass", "address", "namehcr", "offdom", "offfor", "stmult", "specgrp", "subchaps", "county", "cbsa_metro", "cbsa_metro_name", "estymd", "insdate", "effdate", "mutual", "parcert", "trust", "regagnt", "insagnt1", "fdicdbs", "fdicsupv", "fldoff", "fed", "occdist", "otsregnm", "offoa", "cb", "inst_webaddr", "ntreres", "ntrersfm", "ntrersf2", "ntreloc", "report_date"], transformation_ctx = "selectfields2")



## @type: DataSink
## @args: [connection_type = "s3", connection_options = {"path":"s3://vtpanda-data-lake/feeds/fdic/net_charge_offs_1_4_family_residential/clean/orc", "partitionKeys": ["report_date"]}, format = "orc", transformation_ctx = "outputfile4"]
## @return: outputfile4
## @inputs: [frame = selectfields2]
outputfile4 = glueContext.write_dynamic_frame.from_options(frame = selectfields2, connection_type = "s3", connection_options = {"path":"s3://vtpanda-data-lake/feeds/fdic/net_charge_offs_1_4_family_residential/clean/orc", "partitionKeys": ["report_date"]}, format = "orc", transformation_ctx = "outputfile4")

job.commit()
