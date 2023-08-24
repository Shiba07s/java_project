FROM openjdk:11-jre-slim
EXPOSE 9090
ADD target/login-docker.jar login-docker.jar
ENTRYPOINT [ "java","-jar","/login-docker.jar" ]
