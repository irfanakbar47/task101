FROM maven:3.6.3-jdk-11-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN ls
RUN mvn clean package 
RUN ls
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
