FROM openjdk:8-jre-alpine
MAINTAINER Raúl Cruz

# install Java Cryptography Extension
ADD https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/cryptography/local_policy.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/.
ADD https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/cryptography/US_export_policy.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/.

# install newrelic APM agent
ADD https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/monitoring/newrelic.jar .
ADD https://raw.githubusercontent.com/rcruzper/openjdk/master/extensions/monitoring/newrelic.yml .

# install entryproint script
ADD entrypoint.sh .
