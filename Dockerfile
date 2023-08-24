FROM openjdk:11-jre-slim
EXPOSE 8080
ADD target/login-docker.jar login-docker.jar
ENTRYPOINT [ "java","-jar","/login-docker.jar" ]
