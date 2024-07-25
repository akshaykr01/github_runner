#!/bin/bash

# exit immediately if a command exits with a non-zero status
set -e

# ensure the required environment variables are set AR3DNMVJ62ESRPB27JIEZLLGT6PEY-github-token, https://github.com/akshaykr01/node-app - github-url
if [ -z "$GH_RUNNER_TOKEN" ] || [ -z "$GH_RUNNER_URL" ]; then
  echo "$GH_RUNNER_TOKEN and $GH_RUNNER_URL environment variables must be set"
  exit 1
fi

# configure the runner
./config.sh --url "$GH_RUNNER_URL" --token "$GH_RUNNER_TOKEN" --unattended --replace

#Run the runner
./run.sh