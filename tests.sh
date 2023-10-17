#!/bin/bash

set -eE

MSG_BASE="Test"

trap "echo [$MSG_BASE make FAIL]" ERR
make
echo "[$MSG_BASE make OK]"

trap "echo [$MSG_BASE --help FAIL]" ERR
./oapi-cli --help > /dev/null
echo "[$MSG_BASE --help OK]"

trap "echo [$MSG_BASE --help ReadVms]" ERR
./oapi-cli --help ReadVms | grep Filters > /dev/null
echo "[$MSG_BASE --help ReadVms OK]"

trap "echo [$MSG_BASE ReadVms FAIL]" ERR
./oapi-cli ReadVms | grep VmId > /dev/null
echo "[$MSG_BASE ReadVms OK]"

trap "echo [$MSG_BASE ReadImages --DryRun FAIL]" ERR
./oapi-cli ReadImages --DryRun | grep RequestId > /dev/null
echo "[$MSG_BASE ReadImages --DryRun  OK]"

trap "echo [$MSG_BASE ReadImages --DryRun false FAIL]" ERR
./oapi-cli ReadImages --DryRun false | grep ImageId > /dev/null
echo "[$MSG_BASE ReadImages --DryRun false  OK]"

trap "echo [$MSG_BASE ReadImages --Filters.AccountAliases[] Outscale FAIL]" ERR
./oapi-cli ReadImages --Filters.AccountAliases[] Outscale | grep ImageId > /dev/null
echo "[$MSG_BASE ReadImages --Filters.AccountAliases[] Outscale OK]"

trap "echo [$MSG_BASE DeleteTags --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1 FAIL]" ERR
# this doesn't check that the call work, as for that we would require to set ResourceIds
./oapi-cli DeleteTags --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1 | grep RequestId > /dev/null
echo "[$MSG_BASE --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1 OK]"

trap "echo [$MSG_BASE Lot of Arguments FAIL]" ERR
./tests-lot-arg.sh | grep RequestId > /dev/null
echo "[$MSG_BASE Lot of Arguments OK]"

trap "echo [$MSG_BASE ReadConsumptionAccount --FromDate $(date --date="-5 days" '+%F') --ToDate $(date --date="-1 days" "+%F") FAIL]" ERR
./oapi-cli ReadConsumptionAccount --FromDate $(date --date="-5 days" '+%F') --ToDate $(date --date="-1 days" "+%F") | grep Operation > /dev/null
echo "[$MSG_BASE ReadConsumptionAccount --FromDate $(date --date="-5 days" '+%F') --ToDate $(date --date="-1 days" "+%F") OK]"
