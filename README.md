# Supported tags and respective `Dockerfile` links

- [`8-jdk-deprecated`, `latest` (*8-jdk-deprecated/Dockerfile*)](https://raw.githubusercontent.com/rcruzper/java8-dockerize/master/8-jdk-deprecated/Dockerfile)

# What is java8-dockerize?

A base image to execute JVM applications, Spring Boot applications mainly.

# How to use this image

This image adds an entrypoint.sh that allows the execution of java applications. So you need to add your jar and set ENTRYPOINT just like that:
```Dockerfile
FROM rcruzper/java8-dockerize

ADD yourapp.jar .

ENTRYPOINT ["./entrypoint.sh", "/yourapp.jar"]
```

## Environment Variables

The following environment variables can be set to tune java execution.

### `JAVA_AGENT`
e.g., --java_agent:newrelic.jar

### `JAVA_OPTS`
e.g., --Xmx32m -Xss256k

# Extensions

These extensions are installed with this image:

- [Dockerize](https://github.com/jwilder/dockerize)
- [Java Cryptography Extension](https://en.wikipedia.org/wiki/Java_Cryptography_Extension)
- [Newrelic APM agent](https://newrelic.com/application-monitoring)
