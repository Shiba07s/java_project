FROM openjdk:11-jre-slim
EXPOSE 2020
ADD target/ashu-docker.jar ashu-docker.jar
ENTRYPOINT [ "java","-jar","/ashu-docker.jar" ]
