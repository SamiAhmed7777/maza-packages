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

What I need from you (in order of preference):

1. **Best case:** You fork [`SamiAhmed7777/maza-packages`](https://github.com/SamiAhmed7777/maza-packages), push the manifests from there, and submit the PRs from your fork to each upstream package-manager repo (Homebrew tap, WinGet, Chocolatey, Snap). Most package managers prefer first-party submissions, and a fork from you is the cleanest signal that the work is authorized. I'll stop here once you've forked.
2. **Good case:** You give me a written "yes, submit these under your name on my behalf" so I can file the PRs and handle moderation cycles. I'll credit you as the upstream source everywhere.
3. **Minimal case:** You don't have time right now — I'll submit the AUR package (which has no permission gate), the Scoop manifest, and the Chocolatey package today. The other channels wait until you've had a chance to respond. No PRs to your identity.

Either way, the goal is the same: make MAZA easier to install for the community and anyone else who wants to use it.

No rush — happy to wait for your next release cycle if you'd rather bundle this with v0.16.4 or whatever's next. Just wanted to put the work in front of you so it's there when you're ready.

With respect,
Sami
