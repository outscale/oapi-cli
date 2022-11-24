#!/bin/bash

set -eE

MSG_BASE="Test "

trap "echo [$MSG_BASE make FAIL]" ERR
make
echo "[$MSG_BASE make OK]"

trap "echo [$MSG_BASE --help FAIL]" ERR
./oapi-cli --help > /dev/null
echo "[$MSG_BASE --help OK]"

trap "echo [$MSG_BASE ReadVms FAIL]" ERR
./oapi-cli ReadVms | grep VmId > /dev/null
echo "[$MSG_BASE ReadVms OK]"

trap "echo [$MSG_BASE ReadImages --DryRun FAIL]" ERR
./oapi-cli ReadImages --DryRun | grep RequestId > /dev/null
echo "[$MSG_BASE ReadImages --DryRun  OK]"
