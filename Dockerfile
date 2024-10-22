FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install git -y
RUN apt install default-jdk -y
RUN apt install maven -y
WORKDIR /home
RUN git clone "https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git"
WORKDIR /home/App42PaaS-Java-MySQL-Sample
RUN mvn package
WORKDIR /
RUN mkdir /home/project
RUN cp /home/App42PaaS-Java-MySQL-Sample/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /home/project



