# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.0

FROM gcr.io/gke-release/gke-distroless/bash@sha256:eaa3ab28a5519896eb695fb7a04aefa8518f314ad50a636d92b89f72231fd826

#FROM golang:1.19.9-buster as builder 

FROM golang:1.19.1 as builder 

#FROM gcr.io/distroless/base@sha256:1a0204c90d45f559b67e8490eec4bbff44c2721bcba1b6b9027b93a0362feb6c


#FROM gcr.io/gke-master-images/cloud-dns-k8s-agent@sha256:0a5ef6a95cc81e9776c40897a97462610b29b906ad8175e73f171739ab680cc9


# FROM scratch as export-cache