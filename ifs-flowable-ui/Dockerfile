FROM flowable/flowable-ui:6.6.0

RUN chown -R flowable:flowable /app

USER flowable

COPY flowable-entrypoint.sh /
COPY mysql-connector-java-8.0.19.jar /app/WEB-INF/lib
COPY flowable-default.properties /app/WEB-INF/classes

