# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.2

FROM golang:1.19.9-buster as builder 

FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:db70d0593de8052385f9c0d0980fa9d5256d9b41d934f0f77f6fa08669747d32

FROM gcr.io/gke-release/debian-base@sha256:fdbe021f127541e6fef392ac87635305a43baf995dc5feb4377929945f591dbe

RUN --mount=type=bind,target=/host-tmp \
    --mount=type=cache,target=/root/.cache \
    --mount=type=cache,target=/go/pkg \
    mkdir -p /root/.cache/go-build; \
    mkdir -p /go/pkg; \
    if [ -f /host-tmp/go-build-cache.tar.gz ]; then \
      tar xzf /host-tmp/go-build-cache.tar.gz --no-same-owner -C /root/.cache/go-build; \
    fi; \
    if [ -f /host-tmp/go-pkg-cache.tar.gz ]; then \
      tar xzf /host-tmp/go-pkg-cache.tar.gz --no-same-owner -C /go/pkg; \
    fi

FROM scratch as export-cache

COPY --from=cache-creator \
        /tmp/go-build-cache.tar.gz \
        /tmp/go-pkg-cache.tar.gz \
        /tmp/