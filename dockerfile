FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code
RUN pip install -r requirements.txt
#    apk add --update --no-cache postgresql-client && \
#    apk add --update --no-cache -- virtual .tmp-build-dev \
#        build-base postgresql-dev musl-dev && \
#    apk del .tmp-build-deps

COPY . /code/


