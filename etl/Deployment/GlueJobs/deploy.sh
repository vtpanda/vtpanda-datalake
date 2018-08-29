#!/bin/bash
profile=myaws

echo "Uploading files to S3"
aws s3 cp fdic_convert_net_charge_offs_1_4_family_residential_to_orc_glue.py s3://vtpanda-deployment/GlueJobs/fdic_convert_net_charge_offs_1_4_family_residential_to_orc_glue.py --profile $profile
aws s3 cp fdic_convert_net_charge_offs_1_4_family_residential_glue.yaml s3://vtpanda-deployment/GlueJobs/fdic_convert_net_charge_offs_1_4_family_residential_to_orc_glue.yaml --profile $profile

echo "Deploying GlueJobs"
aws cloudformation create-stack --stack-name GlueJobs --template-url https://s3.amazonaws.com/vtpanda-deployment/GlueJobs/fdic_convert_net_charge_offs_1_4_family_residential_to_orc_glue.yaml --profile $profile
aws cloudformation wait stack-create-complete --stack-name GlueJobs --profile $profile
if test "$?" != "0"
then
    echo "GlueJobs Did Not Return in a Timely Manner"
    exit $?
fi
