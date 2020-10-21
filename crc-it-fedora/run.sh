#!/bin/bash

# -- privileged To avoid SELinux issues https://github.com/containers/podman/issues/3683#issuecomment-517237050
#-v /proc/modules:/proc/modules \
# -it  --rm
sudo podman run -d --privileged \
                --cap-add SYS_ADMIN \
                -v $PWD:/crc \
                -v /var/lib/libvirt/:/var/lib/libvirt/ \
                -v /sys/fs/cgroup:/sys/fs/cgroup:rw \
                localhost/crc-it-fedora:32-1.13.4

