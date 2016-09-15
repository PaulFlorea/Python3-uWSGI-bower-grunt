# Python3-uWSGI-bower

To setup your application: put your requirements.txt file in the ./src directory, your uwsgi.ini file in the ./uwsgi directory, and include a Dockerfile like this in the project root.


```
FROM paulflorea/python3-uswgi-bower:latest

# install my packages
ADD . /var/www/app/
RUN pip install -r /var/www/app/src/requirements.txt

RUN cd /var/www/app/static; bower install --allow-root

# set user
USER www-data

CMD uwsgi --ini /var/www/app/uwsgi/uwsgi.ini --callable app
```
