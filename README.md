# maza-packages

Community-maintained **package manager manifests** for [MAZA (MazaCoin)](https://github.com/MazaCoin/maza) v0.16.3.

This is **not** a fork of MAZA itself. It's a small collection of packaging files (Homebrew Cask, Scoop manifest, WinGet manifest, Chocolatey `.nuspec`, Snap `snapcraft.yaml`, AUR `PKGBUILD`) that point installers at the official binaries already published on the MAZA GitHub Releases page.

## Goal

Make MAZA installable with one command on every major platform, so the Lakota community and anyone else who wants to use it doesn't have to download `.exe` and `.dmg` files by hand.

**Install MAZA (once these PRs land):**

| OS      | Command                              |
| ------- | ------------------------------------ |
| macOS   | `brew install --cask maza`           |
| Windows | `winget install MazaCoin.MAZA`       |
| Windows | `scoop install maza`                 |
| Windows | `choco install maza`                 |
| Linux   | `sudo snap install maza`             |
| Arch    | `yay -S maza` (AUR)                  |

(Commands shown after the corresponding PR is merged into each package manager's repo.)

## Status of each channel

| Channel        | Manifest in this repo | PR status | Notes |
| -------------- | --------------------- | --------- | ----- |
| Homebrew Cask  | ✅ `homebrew/Casks/maza.rb`              | ⏳ not yet submitted | Needs `@owlhooter` (MAZA maintainer) sign-off because the cask PR goes to `homebrew/homebrew-cask`, which requires upstream-acknowledged submission for first-party packages. |
| Scoop          | ✅ `scoop/maza.json`                     | ⏳ not yet submitted | Scoop is more lenient — anyone can PR a manifest. |
| WinGet         | ✅ `winget/manifests/m/Mazacoin.MAZA/0.16.3/*.yaml` | ⏳ not yet submitted | Manifests are 3-file (installer, locale, version). PR goes to `microsoft/winget-pkgs`. |
| Chocolatey     | ✅ `chocolatey/maza.nuspec` + `tools/*.ps1` | ⏳ not yet submitted | Needs an API key to push. Will sit in moderator queue 1-3 days after first push. |
| Snap           | ✅ `snap/snapcraft.yaml`                 | ⏳ not yet submitted | Snap Store review can take a week; brand-registered name required. |
| AUR (Arch)     | ✅ `aur/PKGBUILD`                        | ⏳ not yet submitted | AUR is open — anyone can publish. |

## What needs to happen before submission

These PRs need to go to public package-manager repos under your (the maintainer's) authority, or be co-signed by `@owlhooter`. The PRs themselves are simple — the hard part is the trust/sign-off question. A draft message to send the maintainer is in [`MAINTAINER-OUTREACH.md`](./MAINTAINER-OUTREACH.md).

## Building from these manifests

This repo **does not build MAZA itself**. It only describes how to install the pre-built binaries that `@owlhooter` already publishes at <https://github.com/MazaCoin/maza/releases>. Source builds are out of scope.

If you want to build MAZA from source, see the upstream repo's [README](https://github.com/MazaCoin/maza#development-process) and [INSTALL.md](https://github.com/MazaCoin/maza/blob/master/INSTALL.md).

## License

The manifest files in this repo are MIT-licensed, matching upstream MAZA. They reference (but do not redistribute) the MAZA binaries, which are also MIT-licensed upstream.

## Contributing

Open an issue or PR. Each manifest should be reviewed by someone with access to a machine running the target OS before submission.

---

Made with care for the Lakota community. 🦬