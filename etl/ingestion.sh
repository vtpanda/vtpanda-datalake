#!/bin/bash
export AWS_DEFAULT_REGION=us-east-1
sudo pip install boto3
sudo pip install watchtower
if [ -e ${INPUT1_STAGING_DIR}/ingestion_parameters.json ]
then
    python ${INPUT1_STAGING_DIR}/ingestion_mydatalake.py "$(< ${INPUT1_STAGING_DIR}/ingestion_parameters.json)"
else
    python ${INPUT1_STAGING_DIR}/ingestion_mydatalake.py
fi
