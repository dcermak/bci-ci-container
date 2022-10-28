FROM fedora:latest

LABEL org.opencontainers.image.source="https://github.com/dcermak/bci-ci-container"

RUN set -e; \
    dnf -y upgrade --refresh; \
    dnf -y install osc fish python-dnf git pipx jq; \
    dnf clean all; \
    PIPX_BIN_DIR=/usr/bin/ pipx install poetry
