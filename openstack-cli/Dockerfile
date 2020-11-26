FROM alpine:3.12.1

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

# Print direct to stdout wihout buffering
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3 python3-dev gcc libffi-dev openssl-dev nano musl-dev \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools wheel python-openstackclient \
    && rm -r /root/.cache 
