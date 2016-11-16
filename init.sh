sudo rm /etc/nginx/sites-enabled/default
sudo ln -s ~/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s ~/web/hello.py   /etc/gunicorn.d/test
sudo ln   -sf   ~/web/etc/gunicorn.conf      /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart
cd ~/web/
sudo gunicorn -c ~/web/etc/ask.py wsgi --daemon