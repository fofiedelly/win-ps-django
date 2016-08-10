FROM python:3.5-alpine
RUN apk update \
 && apk add postgresql-libs \
 && apk add --virtual .devdeps postgresql-dev musl-dev linux-headers gcc \
 && pip install django psycopg2 uwsgi \
 && apk del .devdeps
