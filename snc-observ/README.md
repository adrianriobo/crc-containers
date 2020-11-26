# Overview

sampling metrics based on cri-o with stats option from crictl

* Improve output format as oc get node only reports tabel format and it is not expected json or yaml support

sudo crictl stats -o yaml -s 2

# Sample usage 

```bash
sudo podman run --privileged -it --rm \
                    -v /var/run/crio/crio.sock:/var/run/crio/crio.sock \
                    quay.io/ariobolo/snc-observer:v1.0 \
                    run help
```
