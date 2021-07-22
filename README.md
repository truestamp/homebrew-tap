# truestamp/homebrew-tap

[Homebrew](https://brew.sh/) [Tap](https://docs.brew.sh/Taps) for installing the [Truestamp CLI](https://github.com/truestamp/truestamp-cli) on
Apple macOS systems.

[Taps](https://docs.brew.sh/Taps) add repositories to the list of formulae that `brew` tracks, updates, and installs from.

If you are trying to install the Truestamp CLI on a Windows or Linux system please follow the [manual installation](https://github.com/truestamp/truestamp-cli) steps.

## macOS Installation

There are currently two builds, one for Apple Intel (x86), and one for Apple Silicon (M1/aarch64).

The initial `brew tap` step is only required the first time you install. Thereafter a
simple `brew update` and `brew upgrade` will do the right thing.


### Setup

One-time command for either architecture.

```sh
brew tap truestamp/tap
```

### macOS (Intel)

```sh
brew install truestamp-cli-x86
```

### macOS (Apple Silicon M1)

```sh
brew install truestamp-cli-aarch64
```

### Upgrade

Periodic upgrade steps.

```sh
brew update
brew upgrade
```