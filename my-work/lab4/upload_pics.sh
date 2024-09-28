#!/bin/bash

# upload a file to bucket

curl "https://media.istockphoto.com/id/1143474376/photo/goose.jpg?s=612x612&w=0&k=20&c=qNPGFucs_-wf9gI67DN7fywJzhx5c3fP_6pkctRMF3U=" > goose.jpg

aws s3 cp goose.jpg s3://ds2022-tkd5jg/


# presigns a url to that file with an expiration of 604800 (7 days)

aws s3 presign --expires-in 604800 s3://ds2022-tkd5jg/goose.jpg

# new url below
https://ds2022-tkd5jg.s3.us-east-1.amazonaws.com/goose.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA3FRRI7RKSQVMPLYK%2F20240928%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240928T190546Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=d1030b65e25168e3c1a281cd3f633708543c6c1f2d1423477fed3cc7594563f5
