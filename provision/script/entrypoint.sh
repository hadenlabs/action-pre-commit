#!/bin/bash

if [ -z "${GITHUB_WORKSPACE}" ]; then
    export GITHUB_WORKSPACE="${PWD}"
fi

# The following environment variables will be provided by the environment automatically: GITHUB_WORKSPACE
mkdir -p "${GITHUB_WORKSPACE}"

cd "${GITHUB_WORKSPACE}" || return

echo "==> Running pre-commit"

pre-commit install

exec pre-commit "${@}"