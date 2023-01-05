#!/bin/env bash
set -e

root=$(cd "$(dirname $0)/../.." && pwd)
if [ -e "$root/.auto-release-abort" ]; then
    echo "previous step triggered stop, abort"
    exit 0
fi

github_url="https://api.github.com/repos/outscale/osc-api/releases"
osc_api_last_release=$(curl -s -H "Authorization: token $GH_TOKEN" $github_url | jq ".[] | select(.prerelease == false) | select(.draft == false) | .tag_name" -r | sort -r --version-sort | head -n 1)
echo "$osc_api_last_release" > $root/api_version

new_sdk_version=$(cat $root/sdk_version)
branch_name="autobuild-$new_sdk_version"
git branch -m $branch_name
git config user.name "Outscale Bot"
git config user.email "opensource+bot@outscale.com"
git commit -asm "osc-sdk-c v$new_sdk_version"

if [ -z "$SSH_PRIVATE_KEY" ]; then
    echo "SSH_PRIVATE_KEY is missing, abort."
    exit 1
fi

echo "$SSH_PRIVATE_KEY" > $root/bot.key
GIT_SSH_COMMAND="ssh -i $root/bot.key" git push -f origin $branch_name
