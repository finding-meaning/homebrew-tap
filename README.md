# idk's Homebrew tap

[idk](https://idk-ide.com/) shows what your coding agent wrote as walkthroughs of the logic,
not the code. It runs on Macs with Apple silicon and macOS 13 or later.

```sh
brew install --cask finding-meaning/tap/idk
```

Give the full name, as above. It tells Homebrew to trust this one cask, so you don't need
`brew tap` or `brew trust` first.

When idk first opens, it asks you to accept its [terms](https://idk-ide.com/#terms) and
installs its skill for your coding agents at `~/.agents/skills/idk`. If a different skill is
already there, idk asks before moving it to the Trash, and quits without changing anything if
you say no.

`brew upgrade` picks up each new version. `brew uninstall --cask idk` removes the app;
`brew uninstall --zap --cask idk` also moves the skill, its settings and everything else idk
put on your Mac to the Trash.

## How the cask gets updated

`Casks/idk.rb` is written by idk's release each time a new version goes up on idk-ide.com.
It names the download on idk-ide.com and the SHA-256 that the release key signed. Don't edit
it by hand: the next release replaces it.
