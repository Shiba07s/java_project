FROM openjdk:11-jre-slim
EXPOSE 8080
ADD target/ashu-docker.jar ashu-docker.jar
ENTRYPOINT [ "java","-jar","/ashu-docker.jar" ]
