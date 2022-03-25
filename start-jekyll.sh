#!/bin/bash

docker run \
  --rm -w "$PWD" -e HOME="$PWD" -v "$PWD:$PWD" \
  --user "$(id -u):$(id -g)" -p 4000:4000 \
  ruby:2.6 \
  /bin/bash -lc \
    'bundle install --deployment;
     bundle exec \
       jekyll serve --config _config.yml,_config_local.yml -H 0.0.0.0'
