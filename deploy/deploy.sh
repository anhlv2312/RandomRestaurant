cd /var/www/html

#mysql -u root -e "drop database roms;"
#mysql -u root < roms.sql

git reset --hard
git pull origin master | grep "roms.sql" && mysql -u root -e "drop database roms;" && mysql -u root -e "create database roms;" && mysql -u root roms < roms.sql

sed -i -e 's/http:\/\/localhost\/roms/https:\/\/www.randomrestaurant.xyz/g' ./application/config/config.php
sed -i -e 's/localhost:3306/localhost/g' ./application/config/database.php

