# truestamp/homebrew-tap

[Homebrew](https://brew.sh/) [tap](https://docs.brew.sh/Taps) that distributes pre-compiled binaries of the [Truestamp CLI](https://github.com/truestamp/truestamp-cli) for macOS (Intel, Apple Silicon) and Linux (x86_64, arm64).

This tap is maintained automatically by [GoReleaser](https://goreleaser.com/) on every tagged release of `truestamp-cli`. The generated Cask lives in [`Casks/truestamp-cli.rb`](./Casks/).

## Install

One-time tap setup:

```sh
brew tap truestamp/tap
```

Install:

```sh
brew install truestamp/tap/truestamp-cli
```

Upgrade to the latest release:

```sh
brew upgrade truestamp/tap/truestamp-cli
```

Uninstall:

```sh
brew uninstall truestamp/tap/truestamp-cli
```

## Other install channels

The Truestamp CLI is also distributed via:

- **`go install`** — `go install github.com/truestamp/truestamp-cli@latest`
- **Direct binary download** — [Releases page](https://github.com/truestamp/truestamp-cli/releases/latest) for darwin/linux/windows × amd64/arm64

See the [truestamp-cli README](https://github.com/truestamp/truestamp-cli#install) for full details.

## License

MIT. See [LICENSE](./LICENSE).
