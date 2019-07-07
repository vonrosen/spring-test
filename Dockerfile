FROM openjdk:12-jdk-oracle

RUN curl -s http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -L -o /etc/yum.repos.d/epel-apache-maven.repo
RUN yum -y install apache-maven
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN mvn package
CMD java -jar /app/target/springboot-0.0.1-SNAPSHOT.jar