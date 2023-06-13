# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

#FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.2

#FROM golang:1.19.9-buster as builder 

#FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:1a0204c90d45f559b67e8490eec4bbff44c2721bcba1b6b9027b93a0362feb6c

#FROM gcr.io/gke-release/debian-base@sha256:fdbe021f127541e6fef392ac87635305a43baf995dc5feb4377929945f591dbe



# FROM scratch as export-cache