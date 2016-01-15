FROM maven:3.3.3-jdk-8-onbuild

RUN apt-get update &&\
    apt-get install git &&\
    apt-get clean

EXPOSE 9966

COPY execute.sh /execute.sh
RUN chmod +x /execute.sh

ENTRYPOINT /execute.sh
