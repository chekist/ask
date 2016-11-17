sudo unlink /etc/nginx/sites-enabled/default
sudo ln -fs ~/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo nginx -t && sudo /etc/init.d/nginx restart
sudo ln -fs ~/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo unlink /etc/gunicorn.d/django
sudo ln -s ~/web/etc/django /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart