# unerr Homebrew tap

The Homebrew formula for [unerr](https://github.com/unerr-ai/unerr).

```bash
brew install unerr-ai/tap/unerr
```

Upgrade with `brew upgrade unerr`, remove with `brew uninstall unerr`.

## What's in here

One file: `Formula/unerr.rb`. It points at the prebuilt binaries attached to
each [unerr release](https://github.com/unerr-ai/unerr/releases) and checks their
SHA-256 before installing. There is no source code in this repository.

The formula is written by unerr's release workflow on every stable tag, so it
tracks new versions the moment they ship.

## unerr itself

unerr is a local guardrail for AI coding agents. It hands the agent your
repository's live call graph and your team's rules at the moment it edits, so it
stops breaking callers it never read. Everything on your machine works with no
account.

- Source, issues and docs: **[github.com/unerr-ai/unerr](https://github.com/unerr-ai/unerr)**
- Website: **[unerr.dev](https://unerr.dev)**
- Other install methods: **[INSTALL.md](https://github.com/unerr-ai/unerr/blob/main/INSTALL.md)**

## Reporting problems

File issues about unerr itself on the [main
repository](https://github.com/unerr-ai/unerr/issues). Only open an issue here if
the formula itself is wrong — a bad checksum, a broken download URL, a version
that never bumped.

Security reports go to **jaswanth@unerr.dev**, not to a public issue. See the
[security policy](https://github.com/unerr-ai/unerr/blob/main/SECURITY.md).

## Supported platforms

macOS on Intel and Apple Silicon, and Linux on x64 and arm64 with glibc. Alpine
and other musl-based distributions have no build — use `npm install -g
@unerr-ai/unerr` there instead.

## License

Apache-2.0, same as unerr. See [LICENSE](./LICENSE).
