
# Container with Docker and OpenShift-client (oc)

Alpine Linux including docker and openshift-client oc, designed to use as builder image in CI/CD pipelines.


# Use it

To get a smooth integration with your host machine, you might want to start your `docker-openshift-client` container as follows:
```
docker run --rm -v "%HOME/.kube:/root/.kube" -v "/var/run/docker.socket:/var/run/docker.socket" -it skyr/docker-openshift-client sh
```
Associated images are built on Docker Hub.
[![](https://images.microbadger.com/badges/image/skyr/docker-openshift-client.svg)](https://microbadger.com/images/skyr/docker-openshift-client "Get your own image badge on microbadger.com")

Get information about existing tags and build state here: [skyr/docker-openshift-client](https://hub.docker.com/r/skyr/docker-openshift-client/)

