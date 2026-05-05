# GenFire Homebrew Tap

Install the [GenFire CLI](https://github.com/genfireai/cli) via Homebrew on macOS or Linux.

## Install

```bash
brew install genfireai/tap/genfire
```

## Update

```bash
brew update
brew upgrade genfire
```

## Uninstall

```bash
brew uninstall genfire
brew untap genfireai/tap
```

## What gets installed

The formula installs the [`@genfire/cli`](https://www.npmjs.com/package/@genfire/cli) npm package into Homebrew's Cellar and symlinks the `genfire` executable into your PATH. Node.js is added as a dependency if you don't already have it.

## After install

```bash
genfire auth login           # browser-based PKCE auth
genfire                      # interactive shell
genfire --help               # full command reference
```

Full docs: https://github.com/genfireai/cli#readme

## License

MIT
