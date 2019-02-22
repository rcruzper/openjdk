FROM adoptopenjdk/openjdk10-openj9:alpine-slim
MAINTAINER Raúl Cruz

# Create user java:java
RUN addgroup -S java && adduser -S -G java java

# Add entrypoint.sh to allow correct execution on PID 1
ADD entrypoint.sh /home/java/entrypoint.sh

# Creation of shared class folder
RUN mkdir /opt/shareclasses && \
    chown java:java /opt/shareclasses && \
    # Set permissions for entrypoint.sh
    chown java:java /home/java/entrypoint.sh

# Run as user java:java
USER java:java
WORKDIR /home/java
