# Contributing

## Formula checklist

- Formula file name is lowercase and matches command (`Formula/<name>.rb`).
- `url` points to an immutable release artifact.
- `sha256` matches the artifact exactly.
- `desc`, `homepage`, and `license` are set.
- `brew audit --strict --online Formula/<name>.rb` passes.

## Local validation

```bash
brew style Formula/<name>.rb
brew audit --strict --online Formula/<name>.rb
brew install --build-from-source Formula/<name>.rb
brew test <name>
```

## Pull requests

Open a PR with:

- Formula changes
- Release notes or changelog link
- Validation command output summary
