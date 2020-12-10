FROM flowable/flowable-ui:6.6.0

COPY mysql-connector-java-8.0.19.jar /app/WEB-INF/lib/

RUN chgrp -R 0 /root && \
    chmod -R g+rwX /root