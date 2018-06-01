FROM openjdk:8-jdk-alpine
LABEL maintainer="dushsb@gmail.com"
LABEL version="0.0.1"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/sb-docker-sample-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} sb-docker-sample.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/sb-docker-sample.jar"]