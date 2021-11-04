#!/usr/bin/env bash

# stop on first failure
set -e

export PULUMI_ACCESS_TOKEN=${PLUGIN_PULUMI_ACCESS_TOKEN}

if [ -z "${PLUGIN_PULUMI_COMMAND}" ]
then
  PULUMI_COMMAND="pulumi up --non-interactive --skip-preview --yes"
else
  PULUMI_COMMAND="${PLUGIN_PULUMI_COMMAND}"
fi

if [ -z "${PLUGIN_PULUMI_DEPENDENCIES}" ]
then
  PULUMI_DEPENDENCIES="pip install -r requirements.txt"
else
  PULUMI_DEPENDENCIES="${PLUGIN_PULUMI_DEPENDENCIES}"
fi

# first run the pulumi dependencies then run the pulumi command
${PULUMI_DEPENDENCIES} && ${PULUMI_COMMAND}
