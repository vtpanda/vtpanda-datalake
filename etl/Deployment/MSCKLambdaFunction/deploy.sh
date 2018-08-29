#!/bin/bash
profile=myaws

echo "Uploading files to S3"
aws s3 cp MSCKLambdaFunction.yaml s3://vtpanda-deployment/MSCKLambdaFunction/MSCKLambdaFunction.yaml --profile $profile
aws s3 cp deploy.sh s3://vtpanda-deployment/MSCKLambdaFunction/deploy.sh --profile $profile

echo "Deploying MSCKLambdaFunction"
aws cloudformation create-stack --stack-name MSCKLambdaFunction --template-url https://s3.amazonaws.com/vtpanda-deployment/MSCKLambdaFunction/MSCKLambdaFunction.yaml --profile $profile
aws cloudformation wait stack-create-complete --stack-name MSCKLambdaFunction --profile $profile
if test "$?" != "0"
then
    echo "MSCKLambdaFunction Did Not Return in a Timely Manner"
    exit $?
fi
