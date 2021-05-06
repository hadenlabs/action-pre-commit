FROM hadenlabs/pre-commit-hooks:latest

ENV PATH $PATH:/root/.local/bin

COPY provision/script/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
