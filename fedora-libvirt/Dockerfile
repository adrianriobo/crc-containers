FROM fedora:32

MAINTAINER "Adrian Riobo" <ariobolo@redhat.com>

RUN dnf update -y \
    && dnf install -y libvirt-daemon-driver-* \
           libvirt-daemon libvirt-daemon-kvm qemu-kvm \
    && dnf clean all \
    && systemctl enable libvirtd \
    && systemctl enable virtlockd 

RUN mkdir -p /var/lib/libvirt/images/

# Edit the service file which includes ExecStartPost to chmod /dev/kvm
RUN sed -i "/Service/a ExecStartPost=\/bin\/chmod 666 /dev/kvm" /usr/lib/systemd/system/libvirtd.service

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
