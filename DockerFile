#This is DockerApplicaton for instrumentation
FROM tiangolo/uwsgi-nginx-flask:python3.12

RUN pip install prometheus_client

ENV LISTEN_PORT 5001

EXPOSE 5001

COPY ./app /app

WORKDIR /app
