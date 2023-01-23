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
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]' --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1
```
is the same as but using [] syntaxe for `ResourceIds`, and without cascade argument.
```bash
oapi-cli DeleteTags --ResourceIds[] "ID0" --ResourceIds[] "ID1"  --Tags.0.Key k0 --Tags.0.Value v0 --Tags.1.Key k1 --Tags.1.Value v1
```
and the same as, using osc-cli-like notation
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]'  --Tags '[{"Key": "k0", "Value": "v0"}, {"Key": "k1", "Value": "v1"}]'
```

# Autocompletion

Bash autocompletion is avaible using either
```bash
source <(oapi-cli-x86_64.AppImage --bash-completion)
```
With the appimage
or sourcing `oapi-cli-completion.bash` file

For zsh, you might need to create a file like:
```zsh
user@machine-on-zsh ~ % cat  ~/osc-cli-completion.zsh
```
```
autoload bashcompinit
bashcompinit
source $HOME/osc-cli-completion.bash
```

# Config

## using `.osc/config.json`

```
{"default":
    {"access_key": "MYACCESSKEY",
     "secret_key": "MYSECRETKEY",
     "region": "eu-west-2"
    },
  "us":
    {"access_key": "MYACCESSKEY",
     "secret_key": "MYSECRETKEY",
     "region": "us-east-2"
    }
}
```

## Environement Variables

AK/SK:
```bash
export OSC_ACCESS_KEY=ACCESS_KEY
export OSC_SECRET_KEY=SECRET_KEY
```

Region:
```bash
export OSC_REGION=REGION # default is eu-west-2
```

Profile:
```bash
export OSC_PROFILE=my_profile #default is 'default'
```

Endpoint:
```bash
export OSC_ENDPOINT_API=XXX
```

Nota that for IP, you need to do something like `127.0.0.1:3000`, example:
```bash
export OSC_ENDPOINT_API=127.0.0.1:3000 # OSC_ENDPOINT_API=https://127.0.0.1:3000 doesn't work
```
