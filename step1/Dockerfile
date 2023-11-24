FROM ubuntu

RUN apt-get update && apt-get install -y git openjdk-11-jdk

WORKDIR /home/ubuntu/

COPY ./entrypoint.sh ./entrypoint.sh
RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]

EXPOSE 8080