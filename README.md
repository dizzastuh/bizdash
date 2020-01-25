# bizdash SRE

SRE Resources for  managing Bizdash Project

## Overview

Spin up resources in the google cloud platform

## Prerequisites

- register a domain
- set up a google cloud account

## Dependencies

- [gcloud cli](https://cloud.google.com/sdk/gcloud/)
- [kops on gce](https://github.com/kubernetes/kops/blob/master/docs/getting_started/gce.md)
- [kubernetes on ubuntu](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [helm](https://helm.sh/docs/intro/install/)

## Getting Started

- build the cluster using `kops`
- use `helm` to manage deployments
