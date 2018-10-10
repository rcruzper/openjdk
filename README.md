# Supported tags and respective `Dockerfile` links

- [`8-jre` (*8-jre/Dockerfile*)](https://raw.githubusercontent.com/abaenglish/openjdk/master/8-jre/Dockerfile)
- [`10-jre`, `latest` (*10-jre/Dockerfile*)](https://raw.githubusercontent.com/abaenglish/openjdk/master/10-jre/Dockerfile)

# What is this image?

Base image to execute JVM applications focused on Spring Boot applications.
8-jre is based on [openjdk:8-jre-alpine](https://hub.docker.com/_/openjdk/)
10-jre is based on [adoptopenjdk/openjdk10-openj9:alpine-slim](https://hub.docker.com/r/adoptopenjdk/openjdk10-openj9/)

# How to use this image

This image adds an entrypoint.sh that allows the execution of java applications as user java:java and PID 1.

Example of a Dockerfile using this base image:
```
FROM abaenglish/openjdk:8-jre

COPY yourapp.jar .

ENTRYPOINT ["./entrypoint.sh", "yourapp.jar"]
```

## Environment Variables

The following environment variables can be set to tune java execution.

### `JAVA_AGENT`
e.g., --java_agent:/etc/agent/newrelic.jar (loaded as a volume)

### `JAVA_OPTS`
e.g., --Xmx32m -Xss256k

## Extensions for Java 8

- [Java Cryptography Extension](https://en.wikipedia.org/wiki/Java_Cryptography_Extension)
