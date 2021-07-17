FROM hadenlabs/pre-commit-hooks:0.3.0

ENV PATH $PATH:/root/.local/bin

COPY provision/script/entrypoint.sh /entrypoint.sh

WORKDIR /data

ENTRYPOINT ["/entrypoint.sh"]
