FROM quay.io/repository/strimzi/kafka:0.40.0-kafka-3.7.0
USER root:root
RUN curl -L -O https://repo1.maven.org/maven2/org/mongodb/kafka/mongo-kafka-connect/1.11.2/mongo-kafka-connect-1.11.2-all.jar
COPY ./mongo-kafka-connect-1.11.2-all.jar /opt/kafka/plugins/
USER 1001
