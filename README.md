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
[cascade notation](https://dart.dev/language/operators#cascade-notation):
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]' --Tags.0.Key k0 ..Value v0 --Tags.1.Key k1 ..Value v1
```
Is the same as the line below but using [] syntax for `ResourceIds`, and without de argument, but in color.
```bash
oapi-cli --color DeleteTags --ResourceIds[] "ID0" --ResourceIds[] "ID1"  --Tags.0.Key k0 --Tags.0.Value v0 --Tags.1.Key k1 --Tags.1.Value v1
```
and is the same as this below, using osc-cli-like notation
```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]'  --Tags '[{"Key": "k0", "Value": "v0"}, {"Key": "k1", "Value": "v1"}]'
```

show debug information (HTTP info, and json send to the api)
```bash
oapi-cli --verbose ReadVms
```

For complex argument, you can store argument in file using `--file`:
```bash
echo -n false > false.txt
./oapi-cli ReadVms --DryRun --file false.txt 
```
Here `-DryRun` argument will be "false", as it is what is inside false.txt.


For CreatePolicy, you should use `--jsonstr-file`.

As CreatePolicy require Document to be a string contaning a jsons, if you want to pass the policy directly to oapi-cli, `--Document` argument should look like this:
```
"Document": "{\"Statement\": [ {\"Effect\": \"Allow\", \"Action\": [\"*\"], \"Resource\": [\"*\"]} ]}"
```

With `--jsonstr-file`, you can simply create a json containing your policy, and pass it to oapi-cli:

```bash
CreatePolicy --PolicyName please --Document --jsonstr-file ./policy.json
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

If it is not in your .zshrc, you might need to add this line too:
```
autoload -Uz compinit && compinit
```

# oapi-cli Variables


oapi-cli offer its own "variables" system.
They can be use if you want to chain calls.
For example, let's say you want a Vm call "my vm".
If you want to set "my vm" as a name, you would normally require to first call CreateVms.
Then get the VmId, and use that VmId with CreateTag.

This is particularly cumbersome in a script, as you need to parse CreateVm output manually to get VmId.

But as oapi-cli allow to chain calls, having a way, to keep some argument taken from a Call return, and send it to the next call, enable us to make a vm with a name, in only one  oapi-cli command.

To do so, here's how to do it using oapi-cli's variables:
```sh
oapi-cli CreateVms --ImageId IMG_NAME  --set-var vm_id=Vms.0.VmId \
CreateTags --ResourceIds[] --var vm_id --Tags.0.Key Name ..Value "my vm"
```

Here `VmId` is store in `vm_id` oapi-cli variable using `--set-var vm_id=Vms.0.VmId`, and then used in CreateTags, with `-var vm_id` argument.

`--set-var`, take a single argument, a string using the syntax `ID=JSON_PATH`.
In order to use it, you need to know which part of a call return you want to store in a variable.

more examples [here](./variable.md)

# Config

## using `~/.osc/config.json` on unix/macOS, or .\config.json on windows

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
brew install outscale/tap/oapi-cli
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

## Arch Linux
you can also install oapi-cli-git on Arch Linux using AUR: (yay -S oapi-cli-git)

## Windows

oapi-cli is pre-packaged for Widows as a zip archive.

Download oapi-cli-x86_64-windows.zip from [release pages](https://github.com/outscale/oapi-cli/releases/latest).

Extract it, run `oapi-cli`.

Note: in comparaison to linux and macos packages, windows oapi-cli look for the config in the directory where it is run.
(so config path is .\config.json)


# Feedback
Either open a github issue, or post a message here: https://github.com/outscale/oapi-cli/discussions/10

# Notes
SDK itself is generated from Outscale's [COGNAC](https://github.com/outscale/COGNAC) using [osc-api](https://github.com/outscale/osc-api) description.
