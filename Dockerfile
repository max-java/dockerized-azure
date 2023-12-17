FROM openjdk:21
LABEL org.opencontainers.image.source=https://github.com/max-java/dockerised-azure
LABEL org.opencontainers.image.description="Demo for building docker container in git actions"
LABEL org.opencontainers.image.licenses=MIT
VOLUME /tmp
COPY build/libs/*.jar app.jar
EXPOSE 8080 5005
ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,address=*:5005,server=y,suspend=n", "-jar","/app.jar"]
