MAINTAINER Raúl Cruz

FROM adoptopenjdk/openjdk10-openj9:alpine-slim

RUN mkdir /opt/shareclasses

# Create user java:java
RUN addgroup -S java && adduser -S -G java java
WORKDIR /home/java

RUN wget https://raw.githubusercontent.com/abaenglish/openjdk/master/10-jre/entrypoint.sh && \
    chmod u+x entrypoint.sh && \
    # Set permissions to non-root user
    chown java:java *

# Run as user java:java
USER java:java
