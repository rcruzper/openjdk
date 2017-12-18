FROM openjdk:8-jre-alpine
MAINTAINER Raúl Cruz

# Create user java:java
RUN addgroup -S java && adduser -S -G java java
WORKDIR /home/java

# Install Java Cryptography Extension and NewRelic APM agent
RUN mkdir -p /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security && \
    wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip" && \
    unzip -p jce_policy-8.zip UnlimitedJCEPolicyJDK8/local_policy.jar > /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/local_policy.jar && \
    unzip -p jce_policy-8.zip UnlimitedJCEPolicyJDK8/US_export_policy.jar > /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/US_export_policy.jar && \
    rm jce_policy-8.zip && \
    wget https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/monitoring/newrelic.jar && \
    wget https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/monitoring/newrelic.yml && \
    chown java:java *

# Run as user java:java
USER java:java

# Install entrypoint script
COPY --chown=java:java entrypoint.sh .
