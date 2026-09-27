<p align="center"><img src="docs/images/banner.svg" alt="homebrew-unsent banner" width="900"/></p>

<h1 align="center">homebrew-unsent</h1>

<p align="center"><strong>Homebrew tap for unsent</strong></p>

---

This is the official Homebrew tap for [unsent](https://github.com/GeiserX/unsent), AutoRecover for your AI agent prompts: it saves what you type into a command-line agent's input box, so a crash, a closed window or a reboot never takes an unsent message with it.

## Installation

```bash
brew tap GeiserX/unsent
brew install unsent
```

## Usage

```bash
unsent claude        # run Claude Code with drafts saved as you type
unsent list          # drafts left behind, newest first
unsent restore       # copy the newest one back to the clipboard
```

The full documentation lives in the [unsent repository](https://github.com/GeiserX/unsent).

## License

[GPL-3.0](LICENSE)
