# homebrew-tap

A Homebrew tap for maxludden's projects.

## Installation

Add the tap, then trust it:

```bash
brew tap maxludden/tap
brew trust maxludden/tap
```

Homebrew won't load formulae or casks from a third-party tap until you trust it. Installing without `brew trust` fails with `Refusing to load formula ... from untrusted tap maxludden/tap`.

To trust only what you install, trust each one instead of the whole tap:

```bash
brew trust --formula maxludden/tap/rich-gradient-cli
brew trust --cask maxludden/tap/ansicube
```

## Casks

### ansicube

An interactive ANSI 256-color explorer for the terminal.

```bash
brew install --cask maxludden/tap/ansicube
```

Then launch it with:

```bash
ansicube
```

> `ansicube` used to ship as a formula. It is now a cask only.
>
> If you installed the old formula, run `brew uninstall --formula ansicube` first.

## Formulas

### rich-gradient-cli

Render files, URLs, stdin, and text with [rich-gradient](https://github.com/maxludden/rich-gradient) from the command-line.

```bash
brew install maxludden/tap/rich-gradient-cli
```

After installation, use the `gradient` command:

```bash
# Print text with a gradient
gradient 'Hello, World!'

# Get help
gradient --help
```

New releases reach the tap about a day after they're published to [PyPI](https://pypi.org/project/rich-gradient-cli/), because Homebrew waits a day before it uses a new PyPI release. To get a release sooner, install it with `uv tool install rich-gradient-cli` or `pip install rich-gradient-cli`.

> The standalone `rich-gradient` formula has been removed. Use `rich-gradient-cli` instead.
>
> If you installed the old formula, run `brew uninstall rich-gradient` first.

## Updating

To update to the latest version:

```bash
brew update
brew upgrade --cask maxludden/tap/ansicube
brew upgrade maxludden/tap/rich-gradient-cli
```

## More Information

- [ansicube on GitHub](https://github.com/maxludden/ansiCube)
- [rich-gradient-cli on GitHub](https://github.com/maxludden/rich-gradient-cli)
- [rich-gradient-cli Documentation](https://maxludden.github.io/rich-gradient-cli)
- [rich-gradient on GitHub](https://github.com/maxludden/rich-gradient)
