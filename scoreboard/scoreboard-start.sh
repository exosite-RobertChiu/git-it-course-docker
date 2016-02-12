#!/bin/sh
# scoreboard-start.sh

cd /var/www/git-it-course-scoreboard
git pull
php artisan key:generate
service apache2 start
service redis_6379 start
service sshd start
tail -F /var/log/apache2/access.log
