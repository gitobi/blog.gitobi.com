#!/bin/sh -l

JEKYLL_ENV=production bundle exec jekyll build
aws s3 cp _site s3://blog.gitobi.com --recursive --exclude .DS_Store
aws cloudfront create-invalidation --distribution-id E2DOMF06OFT9X7 --paths /\*
