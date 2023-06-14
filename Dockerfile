# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.3-gke.5

#FROM golang:1.19.9-buster as builder 

#FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:1a0204c90d45f559b67e8490eec4bbff44c2721bcba1b6b9027b93a0362feb6c


FROM gcr.io/gke-master-images/cloud-dns-k8s-agent@sha256:129dc4b34b3f23ccb82933aa9e006a33cc2476cfab090b3423ebfffde2cdb6ee



# FROM scratch as export-cache