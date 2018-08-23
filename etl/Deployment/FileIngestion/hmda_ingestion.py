#!/usr/bin/python

#This script will download data from the CFPB HMDA API listed below.  This is a single site reference for CFPB HMDA.
#The script will check or create (if necessary) the destination directory.  Each directory will have the year embedded in the name
#Requirements : EC2 instance (to park files) with about 40 Gbs
#             : AWS CLI configure - to allow EC2 to S3 synching
#             : Github watchtower to allow logging to Cloudwatch (sudo pip install watchtower)
#             : manually create EC2 base path or add code to create in script

#all my imports
import requests
import os
import sys
import errno
import subprocess
import timeit
import watchtower
import logging
import datetime
import boto3
import json
from boto3.s3.transfer import TransferConfig

today = datetime.datetime.now()

#define/set variables
urlBase = 'https://api.consumerfinance.gov:443/data/hmda/slice/hmda_lar.csv?$where=as_of_year+%3D+' #TO Do: change path to whatever


pathBase = '/home/ec2-user/ingestion/data/' #TO Do: don't need to change this
pathFeed = 'feeds/hmda/hmda_lar/raw/csv/' #TO Do: change hmda/hmda_lar to proper feed path
pathPartition = 'as_of_year=' #TO Do: change REST API filter to whatever it should be
destFile = 'hmda_lar.csv' #TO Do: change to proper file name

#these are not needed any more
# hmdaYearlist = ['2009' ]
# targetBucket = 'bucket-name'
# logGroup = '/datalake-poc-blah-bah/hmda/raw/ingestion'
# urlEnd = '&$limit=100'


if __name__ == "__main__":
    #TO Do: put the initial list of parameters that we want to use here
    commandargs = '{ "incremental": "true", "targetBucket": "datalake-ingestion", "limit": "100", "logGroup": "/datalake-poc-ingestion/feeds/feed/ingestion"}'

    if len(sys.argv) > 1:
        commandargs = sys.argv[1]
    params = json.loads(commandargs)

#TO Do: this is where we deal with incremental vs full load; need to decide what time periods are incremental vs full
hmdaYearlist = [ today.year - 1 ]
if params.get("incremental", "true") == "false":
    hmdaYearlist = range(2009, today.year) #['2009' ]

targetBucket = params.get("targetBucket", "none")
logGroup = params.get("logGroup", "none")

#TO Do: this is where we limit the number of records back
limit = params.get("limit", "100")
urlEnd = '&$limit=' + limit



logging.basicConfig(level=logging.INFO)
#TO Do: change the logger group to be specifically what we want for the feed we're loading
logger = logging.getLogger('HMDA_load_process-'+str((today-datetime.datetime(1970,1,1)).total_seconds()))

logger.addHandler(watchtower.CloudWatchLogHandler(log_group=logGroup))

msg = 'Parameters: '+ commandargs
print(msg)
logger.info(msg)

#define functions

#directory checking and creation function
def make_sure_path_exists(path):
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise

#get record count in file passed - note that this is not re-reading the file
def file_len(fname):
    p = subprocess.Popen(['wc', '-l', fname], stdout=subprocess.PIPE,
                                              stderr=subprocess.PIPE)
    result, err = p.communicate()
    if p.returncode != 0:
        raise IOError(err)
    return int(result.strip().split()[0])

#Throwing the run configs to the log process
logger.info('Landing path: '+pathBase+pathFeed+pathPartition)
#logger.info('Extract years: '+str(hmdaYearList))
logger.info('Destination file: '+destFile)
logger.info('Target S3 Bucket: '+targetBucket)

#TO Do: change name of function to be feed-specific
def extract_hmda():
# measure process time
    try:

        start_time = timeit.default_timer()

        for varYearInt in hmdaYearlist:
            varYear = str(varYearInt)
            msg = 'Downloading HMDA data for '+ varYear
            print(msg)
            logger.info(msg)
            url = urlBase+varYear+urlEnd

            pathEnd = varYear+'/'
            path = pathBase+pathFeed+pathPartition+pathEnd
            fileName = path+destFile

            uploadfilename = pathFeed+pathPartition+pathEnd+destFile

            make_sure_path_exists(path)
            msg = 'Making directory '+path
            print(msg)
            logger.info(msg)
            try:
                #get the HMDA data for the varYear variable
                req = requests.get(url, stream=True)
                file = open(fileName, 'wb')

                msg = 'Downloading data '+fileName
                print(msg)
                logger.info(msg)

                if req.status_code == 200:
                    for chunk in req.iter_content(100000):
                        if not chunk:
                            break
                        file.write(chunk)
            except:
                msg = 'Error when downloding file '+fileName
                print(msg)
                logger.exception(msg)
                raise
            else:
                file.close()

            fileCount = file_len(fileName)
            msg = 'Completed download of file ' + fileName + ' with '+  str(fileCount) + ' records '
            print(msg)
            logger.info(msg)

            msg = 'Synch to S3 bucket'
            print(msg)
            logger.info(msg)


            #upload file to s3
            msg = 'Upload ' + str(uploadfilename) + ' to S3'
            print(msg)
            logger.info(msg)

            try:
                s3 = boto3.resource('s3')
                GB = 1024 ** 3
                config = TransferConfig(multipart_threshold=5 * GB)
                s3.meta.client.upload_file(fileName, targetBucket, uploadfilename, Config=config)

                msg = 'Upload file finished'
                print(msg)
                logger.info(msg)
            except:
                msg = 'Error when uploading file'
                print(msg)
                logger.exception(msg)
                raise

        # of the of year partition loop
        # actually, we probably don't need this because the ec2 instance is epemeral
        # i'm commenting this out
        msg = 'Deleting EC2 staging data'
        print(msg)
        logger.info(msg)
        delReturn_code = subprocess.call("rm -r "+pathBase, shell=True)
        if delReturn_code == 0:
            msg = 'Delete of EC2 files successful'
            print(msg)
            logger.info(msg)
        else:
            msg = 'Delete of EC2 files failed'
            print(msg)
            logger.info(msg)



    except:
        msg = 'Upload process failed'
        print(msg)
        logger.exception(msg)
        raise
    else:
        #end clock, calc time and print
        elapsed = timeit.default_timer() - start_time
        msg = 'Upload process successful: ' + str(elapsed) + ' seconds processed - elapsed time'
        print(msg)
        logger.info(msg)

if __name__ == "__main__":
    try:
        #TO Do: change name of function to be feed-specific
        extract_hmda()
    except:
        raise
