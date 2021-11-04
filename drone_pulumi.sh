#!/usr/bin/env bash

# stop on first failure
set -e
set -x

if [ -z "${PLUGIN_PULUMI_COMMAND}" ]
then
PULUMI_COMMAND="up --non-interactive --skip-preview"
fi

if [ -z "${PLUGIN_PULUMI_DEPENDENCIES}" ]
then
PULUMI_DEPENDENCIES="pip install -r requirements.txt"
fi

# first run the pulumi dependencies then run the pulumi command
${PULUMI_DEPENDENCIES} && ${PULUMI_COMMAND}
