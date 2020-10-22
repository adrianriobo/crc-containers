## Permissions

https://www.redhat.com/sysadmin/rootless-podman-makes-sense
https://www.redhat.com/sysadmin/user-flag-rootless-containers

## Manual steps

1. Get files: bundle + pull secret
2. Get code
3. Ensure permissions on pull-secret.txt

## Run integration tests

As a sample...

make integration GODOG_OPTS="--godog.tags='@basic && @linux'" \
                 BUNDLE_LOCATION=--bundle-location=/crc/4.5.14/crc_libvirt_4.5.14.crcbundle \
                 PULL_SECRET_FILE=--pull-secret-file=/crc/pull-secret.txt 
