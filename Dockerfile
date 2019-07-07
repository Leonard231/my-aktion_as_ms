FROM java:latest
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true"
WORKDIR /
ADD demo-thorntail.jar demo-thorntail.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar demo-thorntail.jar
