FROM alpine:3.12.1 AS preparer

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

ENV CRICTL_VERSION v1.17.0
ENV CRICTL_DOWNLOAD_URL https://github.com/kubernetes-sigs/cri-tools/releases/download/$CRICTL_VERSION/crictl-$CRICTL_VERSION-linux-amd64.tar.gz

RUN wget $CRICTL_DOWNLOAD_URL \
    && tar zxvf crictl-$CRICTL_VERSION-linux-amd64.tar.gz -C /usr/local/bin \
    && rm -f crictl-$VERSION-linux-amd64.tar.gz

FROM scratch 

COPY --from=preparer /usr/local/bin/crictl .
ENTRYPOINT ["/crictl"]


