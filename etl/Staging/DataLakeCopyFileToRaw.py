import json
import boto3
import logging

print('Loading function')

logger = logging.getLogger()
logger.setLevel(logging.INFO)

s3 = boto3.client('s3')
targetbucket= 'vtpanda-data-lake'

def lambda_handler(event, context):
    #print("Received event: " + json.dumps(event, indent=2))

    # Get the object from the event and show its content type
    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']

    try:
        #response = s3.get_object(Buc   ket=bucket, Key=key)
        logger.info('Object {} from Bucket {}. Start processing.'.format(key, bucket))
        copy_source = {
            'Bucket': bucket,
            'Key': key
        }

        keysplit = key.split('/')
        keytarget = 'feeds/' + '/'.join(keysplit[1:len(keysplit)])

        s3.copy_object(CopySource=copy_source, Bucket=targetbucket, Key=keytarget)
        s3.delete_object(Bucket=bucket, Key=key)
        logger.info('Object {} from Bucket {} successfully processed to {} Object in {} Bucket. End processing.'.format(key, bucket, keytarget, targetbucket))
        return 'Done'
    except Exception as e:
        logger.error(e)
        logger.error('Error getting object {} from bucket {}.'.format(key, bucket))
        raise e
 
