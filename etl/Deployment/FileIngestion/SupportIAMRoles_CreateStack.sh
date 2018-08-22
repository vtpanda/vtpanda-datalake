#!/bin/bash
aws cloudformation create-stack --stack-name SupportIAMRoles --template-body file:///Users/mattroberts/Documents/GitHub/vtpanda-datalake/etl/Deployment/FileIngestion/SupportIAMRoles.yaml --capabilities CAPABILITY_NAMED_IAM
