1. Run worker:

2. Run worker:
cd /srv/www/rrrspec/releases/20171009061303 && RRRSPEC_ENV=staging RRRSPEC_HOST=http://52.220.14.30 RRRSPEC_REDIS_HOST=stg-rrrspec.cbdqrp.0001.apse1.cache.amazonaws.com GITHUB_ACCESS_TOKEN=**personal access_token**  GITHUB_USER=tcuong  bundle exec rrrspec-server server --config=config/master.rb
 cd /srv/www/rrrspec/current && /usr/local/bin/bundle exec unicorn_rails --env staging --daemonize -c /srv/www/rrrspec/shared/config/unicorn.conf