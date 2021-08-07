FROM hadenlabs/pre-commit-hooks:0.3.0

ARG VERSION=0.1.3

LABEL maintainer="Team Hadenlabs <hello@hadenlabs.com>" \
      org.label-schema.vcs-url="https://github.com/hadenlabs/action-pre-commit" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

ENV PATH $PATH:/go/bin:/usr/local/go/bin:/root/.local/bin:/usr/bin:/usr/local/bin

COPY provision/script/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
