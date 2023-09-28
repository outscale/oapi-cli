#!/bin/bash

shopt -s expand_aliases

oapi_cli=$1

if [ -z "$1" ]; then
    oapi_cli='./oapi-cli'
fi

alias oapi-cli=$oapi_cli

if [ "$#" -lt 2 ]; then
    if [ ! -d "osc-ricochet-2" ]; then
	git clone https://github.com/outscale-mgo/osc-ricochet-2
    fi

    cd osc-ricochet-2
    pkill ricochet

    cargo build
    cargo run -- ./ricochet-oapi-cli.json > /dev/null  &

    sleep 5

    cd ..
fi

export OSC_ENDPOINT_API="127.0.0.1:3000"

set -eE

trap "echo [Test \"$oapi_cli\" --help FAIL]" ERR
oapi-cli --help > /dev/null
echo [Test \"$oapi_cli\" --help OK]

trap "echo '[Test \"$oapi_cli\" --help NyanCat doesn t crash FAIL]'" ERR
oapi-cli --help NyanCat --config="./local-tests-cfg.json" | grep 'Unknow Call' > /dev/null
echo [Test \"$oapi_cli\" --help NyanCat doesn t crash OK]

trap "echo [Test unknow user is unknow FAIL]" ERR
oapi-cli   --password=useless --login=non-existant CreateVms ReadVms  ReadVms --Filters.VmIds[] i-00000000 | grep -e 'Unknow user' -e "AuthFailure" -e "require auth" > /dev/null
echo "[Test unknow user is unknow OK]"

trap "echo [Test Create vms and read with user 0 FAIL]" ERR
oapi-cli  --password='ashita wa dochida' --login='joe' CreateVms ReadVms  ReadVms --Filters.VmIds[] i-00000003 | jq .Vms  > /dev/null
echo '[Test Create vms and read with user 0 OK]'

trap "echo [Test Read vms with user 1  FAIL]" ERR
export OSC_LOGIN=titi
oapi-cli   --password='toto' ReadVms --Filters.VmIds[] i-00000003 | jq .Vms | grep '\[]' > /dev/null
echo "[Test Read vms with user 1 is empty OK]"

trap "echo '[Test Read vms with user 1 (default) is not empty, with conf FAIL]'" ERR
OSC_PASSWORD=toto oapi-cli  --config="./local-tests-cfg.json" --authentication_method=password ReadVms --Filters.VmIds[] i-00000003 | jq .Vms | grep '\[]' > /dev/null
echo "[Test Read vms with user 1 (default) is not empty, with conf Ok]"

trap "echo '[Test Read vms with user 0 (my) is not empty, with conf FAIL]'" ERR
oapi-cli  --config="./local-tests-cfg.json" --auth-method=password --profile=my ReadVms --Filters.VmIds[] i-00000003 | jq .Vms | grep 'i-00000003' > /dev/null
echo "[Test Read vms with user 0 (my) is not empty, with conf Ok]"

trap "echo '[Test Read vms with user 0 (my) is not empty, with conf (separate argument) FAIL]'" ERR
oapi-cli  --config="./local-tests-cfg.json" --authentication_method password --profile my ReadVms --Filters.VmIds[] i-00000003 | jq .Vms | grep 'i-00000003' > /dev/null
echo "[Test Read vms with user 0 (my) is not empty, with conf (separate argument) Ok]"

pkill ricochet
