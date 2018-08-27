#!/bin/bash
bucket=vtpanda-data-lake
profile=myaws

aws s3 cp SupportIAMRoles.yaml s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportIAMRoles.yaml --profile $profile
aws s3 cp SupportLambdaFunctions.yaml s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportLambdaFunctions.yaml --profile $profile
aws s3 cp hmda_lar_create_stack.yaml s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/hmda_lar_create_stack.yaml --profile $profile
aws s3 cp SupportSNSTopics.yaml s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportSNSTopics.yaml --profile $profile

aws s3 cp SupportLambdaFunctions_CreateStack.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportLambdaFunctions_CreateStack.sh --profile $profile
aws s3 cp hmda_lar_create_stack.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/hmda_lar_create_stack.sh --profile $profile
aws s3 cp SupportSNSTopics_CreateStack.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportSNSTopics_CreateStack.sh --profile $profile
aws s3 cp SupportIAMRoles_CreateStack.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/SupportIAMRoles_CreateStack.sh --profile $profile
aws s3 cp hmda_lar_create_stack_parameters.json s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/hmda_lar_create_stack_parameters.json --profile $profile

aws s3 cp UploadFilesToS3.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/UploadFilesToS3.sh --profile $profile
aws s3 cp deploy.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/deployment/deploy.sh --profile $profile

aws s3 cp hmda_lar_convert_to_orc.sql s3://$bucket/feeds/hmda/hmda_lar/scripts/hmda_lar_convert_to_orc.sql --profile $profile
aws s3 cp hmda_lar_ingestion.py s3://$bucket/feeds/hmda/hmda_lar/scripts/hmda_lar_ingestion.py --profile $profile
aws s3 cp hmda_lar_ingestion.sh s3://$bucket/feeds/hmda/hmda_lar/scripts/hmda_lar_ingestion.sh --profile $profile
aws s3 cp hmda_lar_ingestion_parameters.json s3://$bucket/feeds/hmda/hmda_lar/scripts/hmda_lar_ingestion_parameters.json --profile $profile
