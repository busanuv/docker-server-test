FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y mysql-server

ENV RDS_HOSTNAME=localhost
ENV RDS_PORT=3306
ENV RDS_DB_NAME=blogdb
ENV RDS_USERNAME=ssar
ENV RDS_PASSWORD=ssar1234

WORKDIR /home/ubuntu/

COPY  ./init.sql ./init.sql
COPY ./entrypoint.sh ./entrypoint.sh

RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]

EXPOSE 3306
EXPOSE 8080