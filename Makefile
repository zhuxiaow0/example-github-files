# renovate: datasource=docker depName=golang
GO_VERSION?=1.19.4

install-tools:
	go install github.com/99designs/gqlgen@v0.17.23
