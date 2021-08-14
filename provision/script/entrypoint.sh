#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;36m"
NORMAL="\033[0m"

DONATE_MSG="👋 maintaining action pre-commit takes a lot of work so consider sponsoring me or donating a little something"

function message::donate {
    local urls
    urls="${1}"
    printf "%s  ${BLUE} %s ${NORMAL}\n" "${DONATE_MSG}" "${urls}"
}

function message::error {
    printf "${RED}%s${NORMAL}\n" "[ERROR]: ${1}"
    return 0
}

function message::info {
    printf "${BLUE}%s${NORMAL}\n" "[INFO]: ${1}"
}

function message::warning {
    printf "${YELLOW}%s${NORMAL}\n" "[WARNING]: ${1}"
}

function message::success {
    printf "${GREEN}%s${NORMAL}\n" "🧉 [SUCCESS]: ${1}"
}

if [ -z "${GITHUB_WORKSPACE}" ]; then
    export GITHUB_WORKSPACE="${PWD}"
fi

# The following environment variables will be provided by the environment automatically: GITHUB_WORKSPACE
mkdir -p "${GITHUB_WORKSPACE}"

cd "${GITHUB_WORKSPACE}" || return

message::info "Running pre-commit"

pre-commit install

pre-commit "${@}"

message::info "Finish pre-commit"

message::donate "https://www.paypal.me/luismayta https://www.buymeacoffee.com/luismayta"