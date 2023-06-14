# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.0

#FROM golang:1.19.9-buster as builder 

#FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:73deaaf6a207c1a33850257ba74e0f196bc418636cada9943a03d7abea980d6d


FROM gcr.io/gke-master-images/cloud-dns-k8s-agent@sha256:0a5ef6a95cc81e9776c40897a97462610b29b906ad8175e73f171739ab680cc9


# FROM scratch as export-cache