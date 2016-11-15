sudo rm /etc/nginx/sites-enabled/default
sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn -c /home/box/web/etc/gunicorn.conf
sudo gunicorn -c /home/box/web/etc/django.py wsgi --daemon