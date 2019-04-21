# oc
Bare-bones container with Openshift client in it.

## Description
This repository contains the dockerfile for a small image containing the Openshift client binary. When used within an Openshift cluster, it will automatically pick up the TLS certificates of the service account it is running under. This image is intended to either be extended, or composited into a Pod for use as a Jenkins agent, small Openshift aware services, debugging etc.
