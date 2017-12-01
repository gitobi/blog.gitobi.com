# Deploy

## Setup

1. `cp aws_secrets.env.sample aws_secrets.env`
1. Write your credentials to the file.

## Command

`JEKYLL_ENV=production bundle exec jekyll build`
`docker-compose run --rm deployment`
