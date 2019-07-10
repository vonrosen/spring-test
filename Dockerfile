FROM openjdk:12-jdk-oracle

RUN yum -y install postgresql
RUN curl -s http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -L -o /etc/yum.repos.d/epel-apache-maven.repo
RUN yum -y install apache-maven
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN mvn package
EXPOSE 8080
CMD src/main/shell/start_in_docker.sh