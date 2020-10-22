FROM localhost/ubuntu-libvirt:20.04

ENV GO_VERSION=1.13.4 \
    GO_DOWNLOAD_URL=https://golang.org/dl
ENV GO_BUNDLE go$GO_VERSION.linux-amd64.tar.gz

ENV TEST_USER=crc-test \
    TEST_USER_HOME=/home/crc-test

RUN useradd -m $TEST_USER \
    && usermod -a -G libvirt $TEST_USER \
    && echo "$TEST_USER ALL=(ALL)NOPASSWD: ALL" >> /etc/sudoers \
    && apt-get install -y wget make gcc nano 

RUN wget $GO_DOWNLOAD_URL/$GO_BUNDLE -P /tmp \
    && tar -xzvf /tmp/$GO_BUNDLE -C /home/crc-test \
    && rm -rf /tmp/$GO_BUNDLE \
    && echo 'export GOPATH=$HOME/go' >> $TEST_USER_HOME/.bashrc \
    && echo 'export PATH=$PATH:$GOPATH/bin' >> $TEST_USER_HOME/.bashrc \
    && mkdir $TEST_USER_HOME/tmp \
    && echo 'export TMPDIR=$TEST_USER_HOME/tmp' >> $TEST_USER_HOME/.bashrc \
    && chown -R $TEST_USER:$TEST_USER $TEST_USER_HOME
 
