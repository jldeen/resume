FROM mcr.microsoft.com/devcontainers/base:bookworm

# Keep in sync with HUGO_VERSION in .github/workflows/static-web-app-ci-cd.yaml
ARG VERSION=0.168.0
ARG TARGETARCH

RUN ARCH=$([ "$TARGETARCH" = "arm64" ] && echo arm64 || echo amd64) && \
    curl -fsSL -o /tmp/hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_linux-${ARCH}.tar.gz" && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    rm /tmp/hugo.tar.gz && \
    hugo version

EXPOSE 1313
