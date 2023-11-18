FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openjdk-11-jdk

WORKDIR /home/ubuntu/

COPY ./entrypoint.sh ./entrypoint.sh
RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]

EXPOSE 8080