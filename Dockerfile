FROM python:2.7-slim AS setup
WORKDIR /setup/
COPY . /setup/
RUN pip install -r requirements.txt


# FROM python:2.7-slim
# WORKDIR /bft/
# COPY
# RUN pip install -r requirements.txt
# RUN python manage.py migrate
# RUN python manage.py createcachetable
# RUN python manage.py task_update
