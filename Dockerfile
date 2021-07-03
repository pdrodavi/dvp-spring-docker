FROM tomcat:8.5.50-jdk8-openjdk
LABEL maintainer "pedrodaviti@gmail.com"
RUN apt-get update &&\
    apt-get clean
COPY target/demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/desafio65.war
RUN sh -c 'touch /usr/local/tomcat/webapps/desafio65.war'
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/desafio65.war"]
