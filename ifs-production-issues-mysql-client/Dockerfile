FROM debian:jessie-slim
RUN apt-get update
RUN apt-get install -y mysql-client

RUN mkdir -p /pending
RUN mkdir -p /logs
RUN chgrp -R 0 /pending && chmod -R g+rwx /pending
RUN chgrp -R 0 /logs && chmod -R g+rwx /logs
# start MySQL scripts
COPY apply.sh /usr/local/bin/
CMD ["tail", "-f", "/dev/null"]