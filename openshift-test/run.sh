#!/bin/bash

set -exuo pipefail

# -- privileged To avoid SELinux issues https://github.com/containers/podman/issues/3683#issuecomment-517237050
#-v /proc/modules:/proc/modules \
# -it  --rm
# As we want to user a non root user to run the container
# and also user data from $USER
# we check id -u $USER and --user 1000 --uidmap 1000:$(id -u $USER):1
# with this may possible to remove --privileged and --cap-add SYS_ADMIN
sudo podman run -it --rm --privileged -name=openshift-test \
                localhost/openshift-test:4.6 help run

