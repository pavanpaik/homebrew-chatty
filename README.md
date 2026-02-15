# homebrew-chatty

Homebrew tap for `pavanpaik` CLI utilities.

## Purpose

This tap is the package distribution repo for Pavan's command-line tools.
Each tool is published as a Ruby formula under `Formula/`.

## Tap setup

Homebrew expects custom taps to follow this naming convention:

- GitHub repo: `pavanpaik/homebrew-chatty`
- Tap name used by users: `pavanpaik/chatty`

If this repository is currently named `chatty`, rename it to `homebrew-chatty` for the best Homebrew compatibility.

## Install the tap

```bash
brew tap pavanpaik/chatty
```

## Install a utility from this tap

```bash
brew install pavanpaik/chatty/chatty
```

## Add a new formula

1. Copy `Formula/chatty.rb` to `Formula/<tool>.rb`.
2. Update `desc`, `homepage`, `url`, `sha256`, `license`, and install logic.
3. Open a PR; CI will run formula lint/audit checks.

## Publish flow (recommended)

1. Build release artifact for your CLI (typically tar.gz).
2. Upload artifact to a GitHub Release in the tool repo.
3. Compute SHA256 for the artifact.
4. Update formula `url` + `sha256` in this tap.
5. Merge to `main`.

## Verify locally

```bash
brew tap pavanpaik/chatty --force-auto-update
brew audit --strict --online Formula/chatty.rb
brew install --build-from-source Formula/chatty.rb
brew test chatty
```
