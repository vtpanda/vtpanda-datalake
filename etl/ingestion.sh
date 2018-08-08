#!/bin/bash
export AWS_DEFAULT_REGION=us-east-1
sudo pip install boto3
sudo pip install watchtower
python ${INPUT1_STAGING_DIR}/ingestion_mydatalake.py
