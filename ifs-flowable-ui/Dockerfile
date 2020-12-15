FROM flowable/flowable-ui:6.6.0

USER root
RUN apk add --no-cache ttf-dejavu su-exec && rm -rf /var/cache/apk/*

COPY mysql-connector-java-8.0.19.jar /app/WEB-INF/lib/

RUN adduser -S testuser -G root

ADD wait-for-something.sh .
RUN chmod +x wait-for-something.sh