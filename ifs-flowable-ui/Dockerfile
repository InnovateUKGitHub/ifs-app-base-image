FROM flowable/flowable-ui:6.6.0

COPY mysql-connector-java-8.0.19.jar /app/WEB-INF/lib/

USER root

# make the script executable
RUN chmod +x /flowable-entrypoint.sh

# define execution entrypoint
ENTRYPOINT ["/flowable-entrypoint.sh"]