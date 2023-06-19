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

set -x
cd $root/osc-sdk-C
pwd
ls
git fetch origin
git checkout origin/master
cd -
git add $root/osc-sdk-C/
cp $root/osc-sdk-C/osc_sdk.c $root/
cp $root/osc-sdk-C/osc_sdk.h $root/
git add $root/osc_sdk.h $root/osc_sdk.c
set +x

COGNAC_CONFIG="--yq-go --target-api=${osc_api_last_release}"  make -C $root/ gen
