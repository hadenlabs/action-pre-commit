#!/bin/sh

set -eu

if [ -z "${GITHUB_WORKSPACE}" ]; then
    export GITHUB_WORKSPACE="${PWD}"
fi

echo "==> Running pre-commit"

pre-commit install

exec pre-commit "${@}"