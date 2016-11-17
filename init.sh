sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf ~/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf ~/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
sudo ln -sf ~/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
sudo gunicorn --bind 0.0.0.0:8000 ask.wsgi:application