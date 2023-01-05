#!/bin/env bash
set -e

root=$(cd "$(dirname $0)/../.." && pwd)
if [ -e "$root/.auto-release-abort" ]; then
    echo "previous step triggered stop, abort"
    exit 0
fi
new_sdk_version=$(cat $root/sdk_version)
branch_name="autobuild-$new_sdk_version"
osc_api_version="$(cat $root/api_version)"

if [ -z "$GH_TOKEN" ]; then
    echo "GH_TOKEN is missing, abort."
    exit 1
fi

# https://docs.github.com/en/free-pro-team@latest/rest/reference/pulls#create-a-pull-request
result=$(curl -s -X POST -H "Authorization: token $GH_TOKEN" -d "{\"head\":\"$branch_name\",\"base\":\"master\",\"title\":\"SDK v$new_sdk_version for API v$osc_api_version\",\"body\":\"Automatic build of SDK v$new_sdk_version version based on Outscale API v$osc_api_version\"}" "https://api.github.com/repos/outscale/osc-sdk-c/pulls")

errors=$(echo $result | jq .errors)

if [ "$errors" != "null" ]; then
    echo "errors while creating pull request, abort: $errors"
    exit 1
fi
