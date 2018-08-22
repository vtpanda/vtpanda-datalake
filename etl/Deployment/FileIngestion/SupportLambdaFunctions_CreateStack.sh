#!/bin/bash
aws cloudformation create-stack --stack-name SupportLambdaFunctions --template-body file:///Users/mattroberts/Documents/GitHub/vtpanda-datalake/etl/Deployment/FileIngestion/SupportLambdaFunctions.yaml
