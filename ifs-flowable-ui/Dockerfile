FROM flowable/flowable-ui:6.6.0

COPY mysql-connector-java-8.0.19.jar /app/WEB-INF/lib/

RUN adduser -S testuser -G flowable

USER testuser