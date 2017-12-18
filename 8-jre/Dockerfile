FROM openjdk:8-jre-alpine
MAINTAINER Raúl Cruz

# Create user java:java
RUN addgroup -S java && adduser -S -G java java
WORKDIR /home/java

# Run as user java:java
USER java:java

# Install entrypoint script
COPY --chown=java:java entrypoint.sh .
