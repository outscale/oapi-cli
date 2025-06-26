# 🧩 Using Variables in `oapi-cli`

`oapi-cli` introduces a powerful variable system that allows you to **chain multiple API calls in a single command**. This removes the need to manually parse output with tools like `jq` and simplifies scripting.

---

## 🖼 Example: Creating a VM with a Name Tag

### 🧱 Traditional approach (osc-cli + jq)

To create a VM named "foo" using `osc-cli`, you'd need to extract the `VmId` manually:

```sh
vm_id=$(osc-cli api CreateVms --ImageId $id | jq .Vms[0].VmId)
osc-cli api CreateTags --ResourceIds "[$vm_id]" --Tags '[{ "Key": "Name", "Value": "foo" }]'
```

If you also want to retrieve the `ImageId` dynamically:

```sh
image_id=$(osc-cli api ReadImages --Filters '{"ImageNames": ["RockyLinux*"]}' | jq .Images[0].ImageId)
vm_id=$(osc-cli api CreateVms --ImageId $image_id | jq .Vms[0].VmId)
osc-cli api CreateTags --ResourceIds "[$vm_id]" --Tags '[{ "Key": "Name", "Value": "foo" }]'
```

---

### ✅ oapi-cli with chained calls and variables

```sh
oapi-cli ReadImages --Filter.ImageNames[] "RockyLinux*" --set-var img_id=Images.0.ImageId \
  CreateVms --ImageId --var img_id --set-var vm_id=Vms.0.VmId \
  CreateTags --ResourceIds[] --var vm_id --Tags.0.Key Name ..Value "foo"
```

✅ No need for intermediate shell variables or `jq`
✅ Easier to read and write
✅ All in one command

---

## 🖼 Example: Creating a Net, Security Group, and Rule

### 🧱 Traditional approach (osc-cli + jq)

```sh
net=$(osc-cli api CreateNet --IpRange "10.0.0.0/16" | jq .Net.NetId)

sg=$(osc-cli api CreateSecurityGroup \
  --NetId $net \
  --SecurityGroupName "security-group-example" \
  --Description "Security group example" | jq .SecurityGroup.SecurityGroupId)

osc-cli api CreateSecurityGroupRule \
  --Flow "Inbound" \
  --SecurityGroupId $sg \
  --Rules '[
    {
      "FromPortRange": 22,
      "ToPortRange": 22,
      "IpProtocol": "tcp",
      "SecurityGroupsMembers": [
        { "AccountId": "123456789012", "SecurityGroupName": "another-security-group" }
      ]
    }
  ]'
```

---

### ✅ oapi-cli with variables

```sh
oapi-cli CreateNet --IpRange "10.0.0.0/16" --set-var net=Net.NetId \
  CreateSecurityGroup --NetId --var net \
    --SecurityGroupName "security-group-example" \
    --Description "Security group example" --set-var sg=SecurityGroup.SecurityGroupId \
  CreateSecurityGroupRule --Flow Inbound --SecurityGroupId --var sg \
    --Rules.0.FromPortRange 22 ..ToPortRange 22 ..IpProtocol tcp \
    ..SecurityGroupsMembers.0.AccountId 123456789012 \
    ..SecurityGroupName another-security-group
```

---

## 🧠 How It Works

* `--set-var NAME=JSON_PATH`: stores a value from a response using a dot-separated JSON path.
* `--var NAME`: uses a previously stored variable as argument value.
* `..` is shorthand to reuse the same object prefix for multiple keys (`--Tags.0.Key`, `..Value`).

> Variables are scoped **within the same command chain**.

