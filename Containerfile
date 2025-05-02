User prompt:
FROM quay.io/fedora/fedora:${BASE_VERSION}

LABEL org.opencontainers.image.source = "https://github.com/gbraad-devenv/fedora"

USER root

RUN dnf install -y \
        systemd sudo git-core \
    && dnf clean all \
    && rm -rf /var/cache/yum

ENTRYPOINT ["/sbin/init"]
