#!/bin/bash
aws cloudformation create-stack --stack-name SupportSNSTopics --template-body file:///Users/mattroberts/Documents/GitHub/vtpanda-datalake/etl/Deployment/FileIngestion/SupportSNSTopics.yaml
