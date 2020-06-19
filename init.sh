
sudo unlink /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf

sudo /etc/init.d/nginx restart

sudo rm -rf /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart 
sudo gunicorn -c /etc/gunicorn.d/hello.py hello:application

﻿sudo /etc/init.d/mysql start﻿
