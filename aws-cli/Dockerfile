FROM alpine:3.11

ENV CLI_VERSION=1.16.302
ENV AWS_REGION=eu-west-2
ENV AWS_DEFAULT_REGION=eu-west-2

RUN mkdir -p /aws && \
    apk -Uuv add groff jq less python py-pip bash && \
    pip install awscli==$CLI_VERSION && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

WORKDIR /aws