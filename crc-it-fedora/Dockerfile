FROM localhost/fedora-libvirt:32

ENV GO_VERSION=1.13.4 \
    GO_DOWNLOAD_URL=https://golang.org/dl
ENV GO_BUNDLE go$GO_VERSION.linux-amd64.tar.gz

RUN dnf install -y wget \
    && wget $GO_DOWNLOAD_URL/$GO_BUNDLE -P /tmp \
    && tar -xzvf /tmp/$GO_BUNDLE -C ~/ \
    && rm -rf /tmp/$GO_BUNDLE \
    && echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc \
    && source $HOME/.bashrc
