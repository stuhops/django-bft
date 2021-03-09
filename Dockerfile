FROM python:2.7-slim
WORKDIR /setup/
COPY . /setup/
RUN python setup.py build

WORKDIR /
RUN pip install -Iv django==1.3
RUN django-admin.py startproject bft

WORKDIR /bft/
RUN cp -r /setup/build/lib/bft .


# FROM python:2.7-slim
# WORKDIR /bft/
# COPY
# RUN pip install -r requirements.txt
# RUN python manage.py migrate
# RUN python manage.py createcachetable
# RUN python manage.py task_update
