FROM openjdk:17-oracle
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "java", \
    "-Xms700m", "-Xmx1500m", "-XX:MetaspaceSize=256m", "-XX:MaxMetaspaceSize=400m", \
    "-jar", "/app.jar" ]
EXPOSE 8080