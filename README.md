# oapi-cli

[![Project Archived](https://docs.outscale.com/fr/userguide/_images/Project-Archived-red.svg)](https://docs.outscale.com/en/userguide/Open-Source-Projects.html)
[![](https://dcbadge.limes.pink/api/server/HUVtY5gT6s?style=flat&theme=default-inverted)](https://discord.gg/HUVtY5gT6s)

<p align="center">
  <img alt="Terminal Icon" src="https://img.icons8.com/ios-filled/100/console.png" width="100px">
</p>

---

> [!WARNING]
> 
> `oapi-cli` is deprecated and is no longer actively maintained.
>
> We recommend using [`octl`](https://github.com/outscale/octl) instead. `octl` is our latest CLI project and is actively maintained.

## 🌐 Links

* 📘 Documentation: [Variable usage](./variable.md)
* 🧪 Nightly builds: [Latest AppImage](https://github.com/outscale/oapi-cli/releases/tag/nightly-linux)
* 🤝 Discussions & Feedback: [Discord](https://discord.gg/HUVtY5gT6s)

---

## 📄 Table of Contents

* [Overview](#-overview)
* [Requirements](#-requirements)
* [Installation](#-installation)

  * [macOS](#macos)
  * [Linux](#linux)
  * [Windows](#windows)
* [Usage](#-usage)

  * [Command Syntax](#command-syntax)
  * [Autocompletion](#autocompletion)
  * [Variable System](#variable-system)
* [Configuration](#-configuration)

  * [Config File](#config-file)
  * [Environment Variables](#environment-variables)
* [Notes](#-notes)
* [License](#-license)

---

## 🧭 Overview

**oapi-cli** is a command-line interface for interacting with OUTSCALE APIs.
It supports advanced argument syntax, response chaining, JSON file inputs, and a built-in variable system to streamline complex workflows.

The CLI is fully self-contained, with prebuilt packages for Linux (AppImage), macOS (Homebrew), and Windows (zip archive).

---

## ✅ Requirements

* Outscale API access (AK/SK or login/password)
* Config file or environment variables for authentication
* AppImage support (Linux only, see notes if FUSE is not installed)

---

## 💻 Installation

### macOS

```bash
brew tap outscale/tap
brew install outscale/tap/oapi-cli
```

Or manually:

```bash
git clone https://github.com/outscale/homebrew-tap
cd homebrew-tap
brew install Formula/oapi-cli.rb
```

---

### Linux

Download the AppImage from the [nightly build](https://github.com/outscale/oapi-cli/releases/tag/nightly-linux).

```bash
chmod a+x ./oapi-cli-x86_64.AppImage
./oapi-cli-x86_64.AppImage
```

Optional installation:

```bash
sudo mv oapi-cli-x86_64.AppImage /usr/local/bin/oapi-cli
```

**Note:** If you see FUSE-related errors, use:

```bash
./oapi-cli-x86_64.AppImage --appimage-extract-and-run ReadImages
```

---

### Windows

Download `oapi-cli-x86_64-windows.zip` from [Releases](https://github.com/outscale/oapi-cli/releases/latest).
Extract and run `oapi-cli.exe`.

> ⚠️ Config is read from `.\config.json` in the current directory.

---

## 🚀 Usage

### 🧾 Command Syntax

```bash
oapi-cli <Operation> [OPTIONS]
```

Get general help:

```bash
oapi-cli --help
```

Get help for a specific operation:

```bash
oapi-cli --help DeleteTags
```

### Examples

#### Complex arguments

```bash
oapi-cli DeleteTags --ResourceIds '["ID0", "ID1"]' --Tags '[{"Key": "k0", "Value": "v0"}, {"Key": "k1", "Value": "v1"}]'
```

Alternative syntax:

```bash
oapi-cli --color DeleteTags \
  --ResourceIds[] "ID0" --ResourceIds[] "ID1" \
  --Tags.0.Key k0 --Tags.0.Value v0 \
  --Tags.1.Key k1 --Tags.1.Value v1
```

Zsh workaround (for brackets):

```bash
oapi-cli --color DeleteTags '--ResourceIds[]' "ID0" '--ResourceIds[]' "ID1" ...
```

Verbose mode:

```bash
oapi-cli --verbose ReadVms
```

Use `--file` to pass argument from a file:

```bash
echo -n false > false.txt
oapi-cli ReadVms --DryRun --file false.txt
```

### CreatePolicy with JSON string

```bash
oapi-cli CreatePolicy --PolicyName please \
  --Document --jsonstr-file ./policy.json
```

---

## 🧩 Autocompletion

### Bash

```bash
source <(oapi-cli-x86_64.AppImage --bash-completion)
```

Or source `oapi-cli-completion.bash`.

### Zsh

```zsh
autoload bashcompinit
bashcompinit
source ~/oapi-cli-completion.bash

autoload -Uz compinit && compinit  # if not already in .zshrc
```

---

## 🔁 Variable System

oapi-cli supports internal variables between chained calls.

```bash
oapi-cli CreateVms --ImageId IMG_ID --set-var vm_id=Vms.0.VmId \
  CreateTags --ResourceIds[] --var vm_id --Tags.0.Key Name ..Value "my vm"
```

This captures the `VmId` from the first call and reuses it in the second.

More examples in [variable.md](./variable.md)

---

## 🛠 Configuration

### 📄 Config File

Located at:

* Unix/macOS: `~/.osc/config.json`
* Windows: `.\\config.json` (same folder as binary)

Example:

```json
{
  "default": {
    "access_key": "MYACCESSKEY",
    "secret_key": "MYSECRETKEY",
    "region": "eu-west-2"
  },
  "us": {
    "access_key": "MYACCESSKEY",
    "secret_key": "MYSECRETKEY",
    "region": "us-east-2"
  }
}
```

Supported keys: `access_key`, `secret_key`, `region`, `x509_client_cert`, `client_certificate`, `x509_client_sslkey`, `proxy`, `endpoint`, `endpoints`

---

### 🌍 Environment Variables

```bash
# AK/SK authentication
export OSC_ACCESS_KEY=...
export OSC_SECRET_KEY=...

# Login/password authentication
export OSC_LOGIN=...
export OSC_PASSWORD=...

# Region (default: eu-west-2)
export OSC_REGION=...

# Profile
export OSC_PROFILE=default

# Override endpoint
export OSC_ENDPOINT_API=https://...
```

---

## 📝 Notes

* The CLI supports multiple argument styles (cascaded, OSC-style, JSON).
* SDK is generated from [COGNAC](https://github.com/outscale/COGNAC) using [osc-api](https://github.com/outscale/osc-api).
* If AppImage FUSE fails, try `--appimage-extract-and-run`.

---

## 📜 License

**oapi-cli** is licensed under BSD-3-Clause.

© Outscale SAS
