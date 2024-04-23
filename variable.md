
Let's say you want to create a VM, called "joe" in a script.

using osc-cli, you would have to do something like this:

```sh
vm_id=$(osc-cli api CreateVms --ImageId $id | jq .Vms[0].VmId)
oapi-cli CreateTags --ResourceIds "[$vm_id]" --Tags '[ { "Key": "Name", "Value": "joe" } ]'
```
Moreover if you want to retrieve the ImageId programmatically, You need another call to ReadImage:
```sh
image_id=$(osc-cli api ReadImages --Filters '{"ImageNames": ["RockyLinux*"]}' | jq .Images[0].ImageId)
vm_id=$(osc-cli api CreateVms --ImageId $image_id | jq .Vms[0].VmId)
oapi-cli CreateTags --ResourceIds "[$vm_id]" --Tags '[ { "Key": "Name", "Value": "joe" } ]'
```

With oapi-cli you can now chain calls, so you don't have to keep intermediary variables.

```sh
oapi-cli ReadImages --Filter.ImageNames[] "RockyLinux*" --set-var img_id=Images.0.ImageId \
  CreateVms --ImageId --var img_id --set-var vm_id=Vms.0.VmId \
  CreateTags --ResourceIds[] --var vm_id --Tags.0.Key Name ..Value "my vm"
```

New let's create a Net, a SecurityGroups, and add rule on it.

```sh
net=$(osc-cli --endpoint "http://127.0.0.1:3000" api CreateNet --IpRange "10.0.0.0/16" | jq .Net.NetId)

sg=$(osc-cli --endpoint "http://127.0.0.1:3000" api CreateSecurityGroup \
  --NetId $net \
  --SecurityGroupName "security-group-example" \
  --Description "Security group example" | jq .SecurityGroup.SecurityGroupId)

osc-cli --endpoint "http://127.0.0.1:3000" api CreateSecurityGroupRule \
  --Flow "Inbound" \
  --SecurityGroupId $sg \
  --Rules '[
      {
        "FromPortRange": 22,
        "ToPortRange": 22,
        "IpProtocol": "tcp",
        "SecurityGroupsMembers": [{"AccountId": "123456789012", "SecurityGroupName": "another-security-group"}],
      },
    ]'
```

with oapi-cli
```sh
oapi-cli CreateNet  --IpRange "10.0.0.0/16" --set-var net=Net.NetId \
  CreateSecurityGroup --NetId --var net --SecurityGroupName "security-group-example"\
         --Description "Security group example" --set-var sg=SecurityGroup.SecurityGroupId \
  CreateSecurityGroupRule --Flow "Inbound" --SecurityGroupId --var sg \
    --Rules.0.FromPortRange 22 ..ToPortRange 22 ..IpProtocol tcp \
    ..SecurityGroupsMembers.0.AccountId 123456789012 \
    ..SecurityGroupName another-security-group
```
