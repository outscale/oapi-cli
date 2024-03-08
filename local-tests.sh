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
oapi-cli --help NyanCat --config="./local-tests-cfg.json" | grep 'Unknown Call' > /dev/null
echo [Test \"$oapi_cli\" --help NyanCat doesn t crash OK]

trap "echo [Test unknown user is unknown FAIL]" ERR
oapi-cli   --password=useless --login=non-existant CreateVms ReadVms  ReadVms --Filters.VmIds[] i-00000000 | grep -e 'Unknown user' -e "AuthFailure" -e "require auth" > /dev/null
echo "[Test unknown user is unknown OK]"

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

trap "echo '[Test CreateVms with Tags using oapi-cli variable FAIL]'" ERR
OSC_ACCESS_KEY=11112211111110000000 OSC_SECRET_KEY=0000001111112222223333334444445555555666 oapi-cli ReadImages --Filters.ImageNames[] "Fill More is for Penguin General" --set-var 'img_id=Images.0.ImageId' \
	 CreateVms --ImageId --var img_id  --set-var vm_id=Vms.0.VmId \
	 CreateTags --ResourceIds[] --var vm_id --Tags.0.Key k ..Value v \
	 ReadVms --Filters.VmIds[] --var vm_id | jq .Vms[0].Tags | grep '"v"'  > /dev/null
echo "[Test CreateVms with Tags using oapi-cli variable OK]"

pkill ricochet
