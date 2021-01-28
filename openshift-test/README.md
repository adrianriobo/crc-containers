# Overview

Container holding the binary for [openshift-tests](https://github.com/openshift/origin/tree/master/test/extended)  

# Sample usage 

```bash
sudo podman run --privileged -it --rm -net=host \
                    -v $PWD/kubeconfig:/kubeconfig \
                    -e KUBECONFIG=/kubeconfig \
                    quay.io/ariobolo/openshift-test:4.7 \
                    run help
```
