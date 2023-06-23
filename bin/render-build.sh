#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean

bundle exec rake db:migrate

# デプロイするたびにDBをリセットする場合は下記の有効可、上記の文章をコメントアウトに変更
# DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:migrate:reset

