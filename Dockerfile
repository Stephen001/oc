FROM alpine:latest as builder
RUN apk add --no-cache curl
RUN curl -L https://github.com/openshift/origin/releases/download/v3.10.0/openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
 cd /tmp && tar xf oc.tar.gz --strip 1 && chmod 755 oc
FROM frolvlad/alpine-glibc
COPY --from=builder /tmp/oc /usr/local/bin/