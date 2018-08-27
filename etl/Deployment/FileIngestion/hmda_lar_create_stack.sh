#!/bin/bash
aws cloudformation create-stack --stack-name HMDALARDataIngestionDataPipelines --template-body file:///Users/mattroberts/Documents/GitHub/vtpanda-datalake/etl/Deployment/FileIngestion/hmda_lar_create_stack.yaml --parameters file:///Users/mattroberts/Documents/GitHub/vtpanda-datalake/etl/Deployment/FileIngestion/hmda_lar_create_stack_parameters.json --profile myaws
