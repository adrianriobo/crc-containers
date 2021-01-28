FROM golang:1.15.4-alpine3.12 AS build

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

ENV BRANCH release-4.7
ENV SOURCE_REPO https://github.com/openshift/origin.git

RUN apk add git make gcc bash libc-dev \
    && cd src \
    && git clone -b $BRANCH --single-branch $SOURCE_REPO \
    && cd origin \
    && make WHAT=cmd/openshift-tests

FROM registry.access.redhat.com/ubi8/ubi-minimal
COPY --from=build /go/src/origin/openshift-tests .
ENTRYPOINT ["/openshift-tests"]

