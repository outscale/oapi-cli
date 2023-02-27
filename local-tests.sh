#!/bin/bash

if [ ! -d "osc-ricochet-2" ]; then
    git clone https://github.com/outscale-mgo/osc-ricochet-2
fi
cd osc-ricochet-2
pkill ricochet

cargo build
cargo run -- ./ricochet.json > /dev/null  &

sleep 5

cd ..

export OSC_ENDPOINT_API="127.0.0.1:3000"

set -eE

trap "echo [Test unknow user is unknow FAIL]" ERR
./oapi-cli   --password=useless --login=non-existant CreateVms ReadVms  ReadVms --Filters.VmIds[] i-00000000 | grep 'Unknow user' > /dev/null
echo "[Test unknow user is unknow OK]"

trap "echo [Test Create vms and read with user 0 FAIL]" ERR
./oapi-cli  --password='ashita wa dochida' --login='joe' CreateVms ReadVms  ReadVms --Filters.VmIds[] i-00000003 | jq .Vms  > /dev/null
echo '[Test Create vms and read with user 0 OK]'


trap "echo [Test Read vms with user 2 is empty FAIL]" ERR
export OSC_LOGIN=titi
./oapi-cli   --password='toto' ReadVms --Filters.VmIds[] i-00000003 | jq .Vms | grep '\[]' > /dev/null
echo "[Test Read vms with user 2 is empty Ok]"

pkill ricochet
