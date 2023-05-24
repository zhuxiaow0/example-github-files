# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.3-gke.2

FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.3

FROM gcr.io/distroless/base@sha256:df13a91fd415eb192a75e2ef7eacf3bb5877bb05ce93064b91b83feef5431f37

FROM gcr.io/gke-release/debian-base@sha256:80c2912ef222cebdf0f261cb60d8224c7a83e2ffd1fc7bc62006dc8467168415

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