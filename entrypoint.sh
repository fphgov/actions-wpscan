#!/usr/bin/env bash

export WP_URL=${INPUT_WP_URL}
export WPSCAN_ENUMERATE=${INPUT_WPSCAN_ENUMERATE}
export WPSCAN_STEALTHY=${INPUT_WPSCAN_STEALTHY}
export WPSCAN_PLUGINS_DETECTION=${INPUT_WPSCAN_PLUGINS_DETECTION}
export WPSCAN_API_TOKEN=${INPUT_WPSCAN_API_TOKEN}

function required() {
    if [ -z "${1}" ]; then
        echo >&2 "${2} variable is required!"
        exit 1
    fi
}

required "${WP_URL}" "wp_url"

export $ARGS

ARGS+="--url ${WP_URL}"

if [ "${WPSCAN_ENUMERATE}" ]; then
    ARGS+=" --enumerate ${WPSCAN_ENUMERATE}"
fi

if [ "${WPSCAN_API_TOKEN}" ]; then
    ARGS+=" --api-token ${WPSCAN_API_TOKEN}"
fi

if [ "${WPSCAN_STEALTHY}" ] && [ "${WPSCAN_STEALTHY}" = "true" ]; then
    ARGS+=" --stealthy"
fi

if [ "${WPSCAN_PLUGINS_DETECTION}" ] && [ "${WPSCAN_PLUGINS_DETECTION}" = "true" ]; then
    ARGS+=" --plugins-detection"
fi

wpscan $ARGS