FROM hadenlabs/pre-commit-hooks:0.4.0

ARG VERSION=0.2.0

LABEL maintainer="Team Hadenlabs <hello@hadenlabs.com>" \
      org.label-schema.vcs-url="https://github.com/hadenlabs/action-pre-commit" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

ENV GITHUB_WORKSPACE=/github/workspace

ENV MODULES_PYTHON \
    pre-commit

ENV PATH $PATH:/go/bin:/usr/local/go/bin:/root/.local/bin:/usr/bin:/usr/local/bin

WORKDIR ${GITHUB_WORKSPACE}

COPY provision/script/entrypoint.sh /entrypoint.sh

RUN python -m pip install --user --no-cache-dir $MODULES_PYTHON \
    && chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
