[![Project Incubating](https://docs.outscale.com/fr/userguide/_images/Project-Incubating-blue.svg)](https://docs.outscale.com/en/userguide/Open-Source-Projects.html)

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
[Cascade notation](https://flutterbyexample.com/lesson/cascade-notation):
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]' --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1
```
is the same as but using [] syntaxe for `ResourceIds`, and without cascade argument, but in color.
```bash
oapi-cli --color DeleteTags --ResourceIds[] "ID0" --ResourceIds[] "ID1"  --Tags.0.Key k0 --Tags.0.Value v0 --Tags.1.Key k1 --Tags.1.Value v1
```
and the same as, using osc-cli-like notation
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]'  --Tags '[{"Key": "k0", "Value": "v0"}, {"Key": "k1", "Value": "v1"}]'
```

show debug information (HTTP info, and json send to the api)
```bash
oapi-cli --verbose ReadVms
```

*Note that with osc-cli, you need to add `api`, here, as we only support outscale api, this is remove*

# Autocompletion

Bash autocompletion is avaible using either
```bash
source <(oapi-cli-x86_64.AppImage --bash-completion)
```
With the appimage
or sourcing `oapi-cli-completion.bash` file

For zsh, you might need to create a file like:
```zsh
user@machine-on-zsh ~ % cat  ~/oapi-cli-completion.zsh
```
```
autoload bashcompinit
bashcompinit
source $HOME/oapi-cli-completion.bash
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

LOGIN/PASSWORD:
```bash
export OSC_LOGIN=LOGIN
export OSC_PASSWORD=PASSWORD
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

## installing on Macos

```bash
brew tap outscale/tap
brew install oapi-cli  
```
or if you want to clone the homebrew repo:

```bash
git clone https://github.com/outscale/homebrew-tap
cd homebrew-tap
brew install Formula/oapi-cli.rb
```

## Installing on Linux

oapi-cli is pre-packaged for Linux as a standalone AppImage.
Download oapi-cli-x86_64.AppImage from [nightly build](https://github.com/outscale/oapi-cli/releases/tag/nightly-linux).
Allow file to be executed by running 
`chmod a+x ./oapi-cli-x86_64.AppImage`

Run oapi-cli: `./oapi-cli-x86_64.AppImage`

Optionally, you can install it for all users:
```sh
sudo mv oapi-cli-x86_64.AppImage /usr/local/bin/oapi-cli
```
and run `oapi-cli`. (as long as /usr/local/bin/ is in your PATH environement variable)

if you have this error (or one similar about fuse):

```
fuse: failed to exec fusermount: No such file or directory
Cannot mount AppImage, please check your FUSE setup.
See https://github.com/AppImage/AppImageKit/wiki/FUSE
for more information
open dir error: No such file or directory
```

You might still be able to extract the contents of this AppImage if you run it with the `--appimage-extract` option.
You can either install fuse yourself, or execute the appimage with `--appimage-extract-and-run` option

Example:
```
./oapi-cli-x86_64.AppImage --appimage-extract-and-run ReadImages
```

using appimage-extract-and-run extract the content of the AppImage in a temporary directory and execute it, this operation is a lot slower than using fuse, and the fuse solution should be use if posible.

# Feedback
Either open a github issue, and post a message here: https://github.com/outscale/oapi-cli/discussions/10

# Notes
SDK itself is generated from Outscale's [COGNAC](https://github.com/outscale/COGNAC) using [osc-api](https://github.com/outscale/osc-api) description.
