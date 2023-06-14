# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.0

#FROM golang:1.19.9-buster as builder 

#FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:1a0204c90d45f559b67e8490eec4bbff44c2721bcba1b6b9027b93a0362feb6c


FROM gcr.io/gke-master-images/cloud-dns-k8s-agent:gke_cloud_dns_k8s_agent_20230531.00_p0@sha256:0a5ef6a95cc81e9776c40897a97462610b29b906ad8175e73f171739ab680cc9


# FROM scratch as export-cache