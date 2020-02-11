import json
import boto3
import logging

print('Loading function')

logger = logging.getLogger()
logger.setLevel(logging.INFO)

s3 = boto3.client('s3')
targetbucket= 'vtpanda-data-lake'

def lambda_handler(event, context):
  
