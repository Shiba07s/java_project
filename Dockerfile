FROM openjdk:11-jre-slim
EXPOSE 2020
ADD target/login-docker.jar login-docker.jar
ENTRYPOINT [ "java","-jar","/login-docker.jar" ]
