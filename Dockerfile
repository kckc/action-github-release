FROM alpine

LABEL com.github.actions.name="Github Release"
LABEL com.github.actions.description="Github release cli"
LABEL com.github.actions.icon="github"
LABEL com.github.actions.color="blue"

ENV VERSION=0.7.2

RUN mkdir /opt \
    && wget -O /opt/github-release.tar.bz2 https://github.com/aktau/github-release/releases/download/v${VERSION}/linux-amd64-github-release.tar.bz2 \
    && tar -xf /opt/github-release.tar.bz2 \
    && mv /bin/linux/amd64/github-release /bin \
    && rm -r /opt/github-release.tar.bz2

ENTRYPOINT github-release
CMD ["--help"]