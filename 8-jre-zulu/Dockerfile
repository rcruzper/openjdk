FROM azul/zulu-openjdk-alpine:8u252-jre

# Create user java:java
RUN addgroup -S java && adduser -S -G java java

# Add entrypoint.sh to allow correct execution on PID 1
ADD entrypoint.sh /home/java/entrypoint.sh

# Set permissions for entrypoint.sh
RUN chown java:java /home/java/entrypoint.sh

# Run as user java:java
USER java:java
WORKDIR /home/java
