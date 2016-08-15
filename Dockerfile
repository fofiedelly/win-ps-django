FROM python:3.5-alpine
RUN apk update \
 && apk add postgresql-libs \
 && apk add --virtual .devdeps postgresql-dev musl-dev gcc \
 && pip install django psycopg2 whitenoise gunicorn aiohttp \
 && apk del .devdeps \
 && rm -rf /var/cache/apk/*
