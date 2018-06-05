FROM openjdk:8
ADD target/gs-spring-boot-docker-0.1.0.jar app.jar
COPY ./*.jar /
COPY startAgent.sh /startAgent.sh
COPY start.sh /start.sh
EXPOSE 8080 7000
ENTRYPOINT ["/bin/sh", "-c", "/start.sh"]
