#!/bin/sh

set -eu

if [ -n "${GITHUB_WORKSPACE}" ]; then
  cd "${GITHUB_WORKSPACE}" || exit
fi

echo "==> Running pre-commit"

pre-commit install

exec pre-commit "${@}"