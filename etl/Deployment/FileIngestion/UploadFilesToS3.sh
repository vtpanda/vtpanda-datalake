#!/bin/bash
aws s3 cp SupportIAMRoles.yaml s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportIAMRoles.yaml --profile myaws
aws s3 cp SupportLambdaFunctions.yaml s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportLambdaFunctions.yaml --profile myaws
aws s3 cp HMDAFileIngestionDataPipelines.yaml s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/HMDAFileIngestionDataPipelines.yaml --profile myaws
aws s3 cp SupportSNSTopics.yaml s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportSNSTopics.yaml --profile myaws

aws s3 cp SupportLambdaFunctions_CreateStack.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportLambdaFunctions_CreateStack.sh --profile myaws
aws s3 cp HMDAFileIngestionDataPipelines_CreateStack.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/HMDAFileIngestionDataPipelines_CreateStack.sh --profile myaws
aws s3 cp SupportSNSTopics_CreateStack.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportSNSTopics_CreateStack.sh --profile myaws
aws s3 cp SupportIAMRoles_CreateStack.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/SupportIAMRoles_CreateStack.sh --profile myaws
aws s3 cp HMDAFileIngestionDataPipelines_CreateStack_Parameters.json s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/HMDAFileIngestionDataPipelines_CreateStack_Parameters.json --profile myaws

aws s3 cp UploadFilesToS3.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/UploadFilesToS3.sh --profile myaws
aws s3 cp deploy.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/deployment/deploy.sh --profile myaws

aws s3 cp hmda_convert_to_orc.sql s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/hmda_convert_to_orc.sql --profile myaws
aws s3 cp hmda_ingestion.py s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/hmda_ingestion.py --profile myaws
aws s3 cp hmda_ingestion.sh s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/hmda_ingestion.sh --profile myaws
aws s3 cp hmda_ingestion_parameters.json s3://vtpanda-data-lake/feeds/hmda/hmda_lar/scripts/hmda_ingestion_parameters.json --profile myaws
