#!/usr/bin/env python3

import boto3
import requests

# vars needed
gif_url = 'https://www'
file_name = 'minions2.gif'
bucket_name = 'ds2022-tkd5jg'
object_name = 'minions2.gif'
expires_in = 604800

# fetch the file from the internet and save it locally
save_file = requests.get(gif_url)

# upload the file to the s3 bucket
s3 = boto3.client('s3', region_name="us-east-1")

resp = s3.put_object(
    Body = object_name,
    Bucket = bucket_name,
    Key = object_name,
    ACL = 'public-read'
)

# generate a presigned url
response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)

print(response)
