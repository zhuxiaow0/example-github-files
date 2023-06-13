# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0
ARG GO_VERSION

#FROM gcr.io/gke-release/debian-base:bullseye-v1.4.2-gke.2

#FROM golang:1.19.9-buster as builder 

#FROM golang:1.19.9 as builder 

FROM gcr.io/distroless/base@sha256:85897d5867c017c7aa23f367520ff021e9b339b47c753d65c705e509be77cf2a

#FROM gcr.io/gke-release/debian-base@sha256:fdbe021f127541e6fef392ac87635305a43baf995dc5feb4377929945f591dbe



# FROM scratch as export-cache