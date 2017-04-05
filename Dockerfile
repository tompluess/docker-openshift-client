FROM docker

MAINTAINER "Tom Pluess <tom@skyr.ch>"

RUN apk update && \
    apk add --no-cache \
                git \
		ca-certificates \
		openssl

ENV OC_VERSION "v1.4.1"
ENV OC_RELEASE "openshift-origin-client-tools-v1.4.1-3f9807a-linux-64bit"

RUN mkdir -p /tmp/oc && \
    wget -O /tmp/oc/release.tar.gz https://github.com/openshift/origin/releases/download/$OC_VERSION/$OC_RELEASE.tar.gz && \
    tar --strip-components=1 -xzvf /tmp/oc/release.tar.gz -C /tmp/oc/ && \
    mv /tmp/oc/oc /usr/bin/ && \
    rm -rf /tmp/oc

