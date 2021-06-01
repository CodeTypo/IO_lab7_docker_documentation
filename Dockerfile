FROM openjdk:11-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

#FROM postgres
#COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

#FROM gradle:7.0.2-jdk11 AS build
#USER root
#RUN mkdir app
#COPY src/ /app/src/
#COPY build.gradle /app/
#COPY settings.gradle /app/
#WORKDIR /app


#
#FROM openjdk:11-jdk
#ARG JAR_FILE=build/libs/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

#FROM postgres
#COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d