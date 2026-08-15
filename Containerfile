FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/strawberry"

RUN apt-get update && \
    apt-get install -y --no-install-recommends strawberry && \
    cpak-clean-junk

COPY strawberry.desktop /usr/share/applications/strawberry.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/strawberry.png

