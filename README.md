# Abendrot Homebrew Tap

Install the signed, notarized [Abendrot](https://abendrot.app/) Mac app and its
bundled command-line tool:

```sh
brew install --cask matthewrball/tap/abendrot
```

The cask downloads the same versioned DMG published on
[GitHub Releases](https://github.com/matthewrball/abendrot/releases). Abendrot
uses Sparkle for updates and sends no app telemetry.

For a `Brewfile`:

```ruby
tap "matthewrball/tap"
cask "abendrot"
```
