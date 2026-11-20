# aubinvan/homebrew-tap

Homebrew casks by Aubin MIENANZAMBI.

## PureValet

[PureValet](https://github.com/aubinvan/purevalet) is a tiny native macOS menu bar app that runs and controls Laravel Valet.

```bash
brew install --cask aubinvan/tap/purevalet
```

Update:

```bash
brew upgrade --cask purevalet
```

PureValet is not notarized. If macOS blocks the first launch:

```bash
xattr -dr com.apple.quarantine /Applications/PureValet.app
```

The cask is updated automatically on each PureValet release (`scripts/update-cask.sh` in the PureValet repository).
