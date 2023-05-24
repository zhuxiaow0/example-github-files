# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.3-gke.2

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.3

FROM gcr.io/distroless/base@sha256:5e3fac1733c75e0e879a9770724e3960610a5cfbbfb5366559fbc334fe86c249

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