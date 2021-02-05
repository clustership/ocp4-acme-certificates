# Install letsencrypt certs on OpenShift with challenge-alias support

# Configure


Create a suitable cluster.yml from cluster-example.yml

```bash
cp cluster-example.yml cluster.yml
vim cluster.yml
#
# edit to fit your configuration.
#
```

## Run it


```bash
cd ansible
./01-install-certs.sh -vv
```
