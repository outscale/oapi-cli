[![Project Sandbox](https://docs.outscale.com/fr/userguide/_images/Project-Sandbox-yellow.svg)](https://docs.outscale.com/en/userguide/Open-Source-Projects.html)

# oapi-cli

## Usage

Get help:
```bash
oapi-cli --help # give help
```

Get DeleteTags help
```
oapi-cli --help DeleteTags
```

Examples of complex argument, with DeleteTags
Cascade arguments:
```
oapi-cli DeleteTags --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1
```
is the same as
```
oapi-cli DeleteTags --Tags.0.Key k0 --Tags.0.Value v0 --Tags.1.Key k1 --Tags.1.Value v1
```
and the same as
```
oapi-cli DeleteTags --Tags '[{"Key": "k0", "Value": "v0"}, {"Key": "k0", "Value": "v0"}]'
```
