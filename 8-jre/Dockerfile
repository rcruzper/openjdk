FROM openjdk:8-jre-alpine
MAINTAINER Raúl Cruz

# Create user java:java
RUN addgroup -S java && adduser -S -G java java
WORKDIR /home/java

# Install entrypoint script
# Using RUN instead of "COPY --chown=java:java entrypoint.sh ." because of --chown incompatibility with docker version prior to 17.09)
RUN wget https://raw.githubusercontent.com/rcruzper/openjdk/master/8-jre/entrypoint.sh && \
    chmod u+x entrypoint.sh && \
    chown java:java *

# Run as user java:java
USER java:java
