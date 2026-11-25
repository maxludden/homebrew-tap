# homebrew-tap

A Homebrew tap for maxludden's projects.

## Installation

```bash
brew tap maxludden/tap
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
