FROM openjdk:21
LABEL org.opencontainers.image.source=https://github.com/max-java/dockerised
LABEL org.opencontainers.image.description="Demo for building docker container in git actions"
LABEL org.opencontainers.image.licenses=MIT
VOLUME /tmp
COPY build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
