**To:** @owlhooter (DM on GitHub, or post as a GitHub Discussion on MazaCoin/maza)
**Subject:** Package manager distribution for MAZA 0.16.3 — drafts ready, one 15-minute registration unlocks WinGet

Hi @owlhooter,

I'm reaching out because MAZA 0.16.3 is one of the longest-running sovereign-tribe cryptocurrencies out there, and the install story for new users is rougher than it needs to be — they have to find the right `.exe` / `.dmg` / `.tar.gz` on the GitHub Releases page and install manually.

I've drafted **packaging manifests for every major package manager** so MAZA becomes a one-line install:

| OS      | Command                              |
| ------- | ------------------------------------ |
| macOS   | `brew install --cask maza`           |
| Windows | `scoop install maza`                 |
| Windows | `choco install maza`                 |
| Linux   | `sudo snap install maza`             |
| Arch    | `yay -S maza`                        |
| Windows | `winget install MazaCoin.MAZA`       |

Five of those channels (AUR, Scoop, Chocolatey, Snap, Homebrew Cask) can ship today from the drafts in this repo: <https://github.com/SamiAhmed7777/maza-packages>

**The one thing that gates WinGet**: Microsoft requires a registered Partner Center publisher identity before any package can use the `MazaCoin.*` namespace. The registration is free and takes ~15 minutes — the steps are documented in [`winget/.deferred/README.md`](https://github.com/SamiAhmed7777/maza-packages/blob/main/winget/.deferred/README.md). Once `MazaCoin` is registered, the manifest under `winget/.deferred/manifests/m/MazaCoin/MAZA/0.16.3/` is ready to lift into the active tree and submit — same day.

**If you want to ship this yourself, the easiest path is to fork [`SamiAhmed7777/maza-packages`](https://github.com/SamiAhmed7777/maza-packages) and push from your fork.** The manifests, asset files, and SHA256s are all in place. Submitting from your own fork is the cleanest signal to package-manager reviewers that the work is authorized, and you can take it from there without further coordination from me.

If you'd rather have me drive the PRs, two options:

1. **Yes, submit on my behalf:** I file the PRs under your name (or my name, with you credited as upstream) and handle moderation cycles. Most channels (AUR, Scoop, Chocolatey, Snap, Homebrew Cask) can ship today.
2. **No rush:** I'll leave the drafts in place and wait for your next release cycle if you'd rather bundle this with v0.16.4 or whatever's next. Just wanted to put the work in front of you so it's there when you're ready.

Either way, the goal is the same: make MAZA easier to install for the community and anyone else who wants to use it.

With respect,
Sami
