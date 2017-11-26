#!/bin/sh -l

aws s3 cp _site s3://blog.gitobi.com --recursive --exclude .DS_Store
# aws cloudfront create-invalidation --distribution-id E3QY46YGHFXMOK --paths /\*
