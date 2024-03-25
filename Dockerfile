FROM quay.io/strimzi/kafka:0.40.0-kafka-3.7.0
USER root:root
ADD https://repo1.maven.org/maven2/org/mongodb/kafka/mongo-kafka-connect/1.11.2/mongo-kafka-connect-1.11.2-all.jar /opt/kafka/plugins/
RUN chmod a+r /opt/kafka/plugins/*
USER 1001
