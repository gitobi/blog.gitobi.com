#!/bin/sh -l

aws s3 sync _site s3://blog.gitobi.com --delete
aws cloudfront create-invalidation --distribution-id E2DOMF06OFT9X7 --paths /\*
