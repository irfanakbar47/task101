FROM maven:4.0.0-jdk-11-slim AS build
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -f ./pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
