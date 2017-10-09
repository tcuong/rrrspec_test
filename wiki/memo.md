1. Run worker:
cd /srv/www/rrrspec/current && RRRSPEC_REDIS_HOST=stg-rrrspec.cbdqrp.0001.apse1.cache.amazonaws.com RRRSPEC_MASTER_HOST=172.31.23.119 RRRSPEC_ENV=staging bundle exec rrrspec-server worker --config=config/worker.rb

2. Run worker:
cd /srv/www/rrrspec/releases/20171009061303 && RRRSPEC_ENV=staging RRRSPEC_HOST=http://52.220.14.30 RRRSPEC_REDIS_HOST=stg-rrrspec.cbdqrp.0001.apse1.cache.amazonaws.com GITHUB_ACCESS_TOKEN=**personal access_token**  GITHUB_USER=tcuong  bundle exec rrrspec-server server --config=config/master.rb
cd /srv/www/rrrspec/current && /usr/local/bin/bundle exec unicorn_rails --env staging --daemonize -c /srv/www/rrrspec/shared/config/unicorn.conf

3. Make sure to kill all rrrspec related process:
kill $(ps aux | grep 'rrr' | awk '{print $2}')

4. Trouble:
Currently, the status of PR is updated when success but not when failed.
If test is failed, rrrspec run slave seems to retry it multiple times.