FROM openjdk:12-jdk-oracle

RUN curl -s http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -L -o /etc/yum.repos.d/epel-apache-maven.repo
RUN mvn package