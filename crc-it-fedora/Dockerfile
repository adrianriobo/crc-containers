FROM localhost/fedora-libvirt:32

ENV GO_VERSION=1.13.4 \
    GO_DOWNLOAD_URL=https://golang.org/dl
ENV GO_BUNDLE go$GO_VERSION.linux-amd64.tar.gz

ENV TEST_USER=crc-test \
    TEST_USER_HOME=/home/crc-test

RUN useradd $TEST_USER \
    && usermod -aG wheel $TEST_USER \
    && echo '%wheel ALL=(ALL)NOPASSWD: ALL' >> /etc/sudoers \
    && dnf install -y wget make gcc nano git NetworkManager \
    && systemctl enable NetworkManager     

RUN wget $GO_DOWNLOAD_URL/$GO_BUNDLE -P /tmp \
    && tar -xzvf /tmp/$GO_BUNDLE -C /home/crc-test \
    && rm -rf /tmp/$GO_BUNDLE \
    && echo 'export GOPATH=$HOME/go' >> $TEST_USER_HOME/.bashrc \
    && echo 'export PATH=$PATH:$GOPATH/bin' >> $TEST_USER_HOME/.bashrc \
    && mkdir $TEST_USER_HOME/tmp \
    && echo 'export TMPDIR=$TEST_USER_HOME/tmp' >> $TEST_USER_HOME/.bashrc 
 
