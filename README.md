# truestamp/homebrew-tap

[Homebrew](https://brew.sh/) [Tap](https://docs.brew.sh/Taps) for installing the [Truestamp CLI](https://github.com/truestamp/truestamp-cli) on
Apple macOS (x86, Apple Silicon) and Linux systems.

[Taps](https://docs.brew.sh/Taps) add repositories to the list of formulae that `brew` tracks, updates, and installs from.

If you are trying to install the Truestamp CLI on a Windows, or on a Linux system where you don't use Homebrew, please follow the [manual installation](https://github.com/truestamp/truestamp-cli) steps.

## Installation

There are currently three builds available. The right build should be chosen for your system automatically.

- Apple macOS (Intel x86-064)
- Apple macOS (Apple Silicon/M1/arm/aarch64)
- Linux (Intel x86-064)

The initial `brew tap` step is only required the first time you install. Thereafter a
simple `brew update` and `brew upgrade` will do the right thing.

### Setup

One-time command.

```sh
brew tap truestamp/tap
```

### Install

```sh
brew install truestamp-cli
```

### Upgrade

To perform a periodic upgrade.

```sh
brew update
brew upgrade
```

### Uninstall

```sh
brew uninstall truestamp-cli

# or

brew uninstall --force truestamp-cli
```
