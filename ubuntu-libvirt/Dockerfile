FROM ubuntu:20.04

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Madrid"

RUN apt-get update -y \
    && apt-get install -y sudo qemu-kvm libvirt-daemon-system \
       libvirt-clients bridge-utils network-manager \
    && apt-get clean \
    && systemctl enable libvirtd \
    && systemctl enable virtlockd \
    && systemctl enable network-manager 

RUN mkdir -p /var/lib/libvirt/images/

# Edit the service file which includes ExecStartPost to chmod /dev/kvm
RUN sed -i "/Service/a ExecStartPost=\/bin\/chmod 666 /dev/kvm" /usr/lib/systemd/system/libvirtd.service

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
