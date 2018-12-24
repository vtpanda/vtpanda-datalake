#!/usr/bin/python

from botocore.vendored import requests
import timeit
import logging
import datetime
import boto3
import watchtower

def main (event, context):
    #define/set variables
    today = datetime.datetime.now()
    logger = logging.getLogger('Matt-test-process-'+str((today-datetime.datetime(1970,1,1)).total_seconds()))
    logger.setLevel(logging.INFO)
    logger.addHandler(watchtower.CloudWatchLogHandler())
    logger.info('Execution Time: '+str(today))


    #hmdaYearlist = ['2009','2010','2011','2012','2013','2014','2015','2016' ]
    #hmdaYearlist = ['2016','2017' ]
    #logger.info('Extract years: '+str(hmdaYearList))

    varYear = "2010"
    urlBase = 'https://api.consumerfinance.gov:443/data/hmda/slice/hmda_lar.csv?$where=as_of_year+%3D+'
    urlEnd = '&$limit=0'
    url = urlBase+varYear+urlEnd
    logger.info('Downloading HMDA data for '+ varYear + '. URL = ' + url)

    #pathBase = '/home/ec2-user/data/hmda'
    #pathFeed = '/feeds/hmda/hmda_lar/raw/csv/'
    #pathPartition = 'as_of_year='
    destFile = 'hmda_lar.csv'
    #pathEnd = varYear+'/'
    #path = pathBase+pathFeed+pathPartition+pathEnd
    #fileName = path+destFile
    targetBucket = 'datalake-poc-matt'

    #logger.info('Landing path: '+pathBase+pathFeed+pathPartition)
    logger.info('Destination file: '+destFile)
    logger.info('Target S3 Bucket: '+targetBucket)

    s3 = boto3.client('s3')


    # measure process time
    start_time = timeit.default_timer()

    try:
        logger.info('This is where I would do stuff.')
        req = requests.get(url, stream=True)


        if req.status_code == 200:
        #if True:
            mpu = s3.create_multipart_upload(Bucket=targetBucket, Key=destFile)
            uploadId = mpu['UploadId']
            logger.info('before load; bucket = ' + targetBucket + '; key = ' + destFile + '; uploadId = ' + uploadId)

            i = 1
            part_info = {
        		'Parts': [

        		]
        	}

            for chunk in req.iter_content(10000000):
                if not chunk:
                    break
            #for i in range(1,3):
                part = s3.upload_part(Bucket=targetBucket, Key=destFile, PartNumber=i, UploadId=mpu['UploadId'], Body=chunk)

                parts = {
                    'PartNumber': i,
                    'ETag': part['ETag']
                }
                part_info['Parts'].append(parts)

                i = i + 1

            logger.info('after load; bucket = ' + targetBucket + '; key = ' + destFile + '; uploadId = ' + uploadId)

            s3.complete_multipart_upload(Bucket=targetBucket, Key=destFile, UploadId=uploadId, MultipartUpload=part_info)

    except Exception as e:
        logging.exception("message")

    #end clock, calc time and print
    elapsed = timeit.default_timer() - start_time
    msg = str(elapsed) + ' seconds processed - elapsed time'

    logger.info(msg)
