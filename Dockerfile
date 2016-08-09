FROM python:3.5-alpine
RUN apk update \
 && apk add postgresql-libs postgresql-dev musl-dev gcc \
 && pip install django psycopg2 \
 && apk del postgresql-dev musl-dev gcc
