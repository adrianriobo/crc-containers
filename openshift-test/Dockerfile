FROM registry.access.redhat.com/ubi8/go-toolset:1.14.12 AS build

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

ENV BRANCH release-4.7
ENV SOURCE_REPO https://github.com/openshift/origin.git

RUN git clone -b $BRANCH --single-branch $SOURCE_REPO \
    && make -C origin WHAT=cmd/openshift-tests

FROM registry.access.redhat.com/ubi8/ubi-minimal
COPY --from=build /go/src/origin/openshift-tests .
ENTRYPOINT ["/openshift-tests"]

