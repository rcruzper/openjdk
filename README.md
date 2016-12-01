# Supported tags and respective `Dockerfile` links

- [`8-jre-all`, `latest` (*8-jre/all/Dockerfile*)](https://raw.githubusercontent.com/rcruzper/java8-dockerize/master/8-jre/all/Dockerfile)
- [`8-jre` (*8-jre/Dockerfile*)](https://raw.githubusercontent.com/rcruzper/java8-dockerize/master/8-jre/Dockerfile)
- [`8-jdk-deprecated`, (*8-jdk-deprecated/Dockerfile*)](https://raw.githubusercontent.com/rcruzper/java8-dockerize/master/8-jdk-deprecated/Dockerfile)

# What is this image?

Base image to execute JVM applications focused on Spring Boot applications.

# How to use this image

This image adds an entrypoint.sh that allows the execution of java applications. So you need to add your jar and set ENTRYPOINT just like that:
```
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

## Extensions

These extensions are installed with the images tagged as `all`:

- [Java Cryptography Extension](https://en.wikipedia.org/wiki/Java_Cryptography_Extension)
- [Newrelic APM agent](https://newrelic.com/application-monitoring)
