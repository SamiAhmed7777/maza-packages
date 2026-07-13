# Message to send to @owlhooter

Draft below. Adapt as needed — this is a starting point, not gospel.

---

**To:** @owlhooter (DM on GitHub, or post as a GitHub Discussion on MazaCoin/maza)
**Subject:** Package manager distribution for MAZA 0.16.3 — drafts ready for review

Hi @owlhooter,

I'm reaching out because MAZA 0.16.3 is one of the longest-running sovereign-tribe cryptocurrencies out there, and the install story for new users is rougher than it needs to be — they have to find the right `.exe` / `.dmg` / `.tar.gz` on the GitHub Releases page and install manually.

I've drafted **packaging manifests for every major package manager** so MAZA becomes a one-line install:

| OS      | Command                              |
| ------- | ------------------------------------ |
| macOS   | `brew install --cask maza`           |
| Windows | `winget install MazaCoin.MAZA`       |
| Windows | `scoop install maza`                 |
| Windows | `choco install maza`                 |
| Linux   | `sudo snap install maza`             |
| Arch    | `yay -S maza`                        |

All of these point at the **existing v0.16.3 binaries you already publish** at <https://github.com/MazaCoin/maza/releases/tag/v0.16.3>. No code changes. No fork of MAZA itself. Just packaging glue.

The draft manifests live in a public repo so you can review them before anything is submitted: <https://github.com/SamiAhmed7777/maza-packages>

What I need from you (in order of preference):

1. **Best case:** You submit the PRs yourself from your own accounts (Homebrew tap, WinGet, Chocolatey, Snap) — I'll hand over the exact files you need. Most package managers prefer first-party submissions.
2. **Good case:** You give me a written "yes, submit these under your name on my behalf" so I can file the PRs and handle moderation cycles. I'll credit you as the upstream source everywhere.
3. **Minimal case:** You don't have time right now — I'll submit the AUR package (which has no permission gate) and write an installation guide that documents the manual install path until the official channels are ready. No PRs to your identity.

Either way, the goal is the same: make MAZA easier to install for the Lakota community and anyone else who wants to use it.

No rush — happy to wait for your next release cycle if you'd rather bundle this with v0.16.4 or whatever's next. Just wanted to put the work in front of you so it's there when you're ready.

With respect,
Sami

---

## Notes for whoever sends this

- Send it as a GitHub Discussion (not an issue) on MazaCoin/maza — Discussions are lower-pressure than Issues and don't show up in the "open issues" counter.
- If @owlhooter prefers Discord/Telegram/email, those are listed on mazacoin.org — adjust the channel.
- Don't send this and then immediately start submitting AUR PRs. Wait at least a week for a response. AUR submission is the one channel that doesn't need permission, so if they ghost, you can do it without — but give them the courtesy first.
- If they say yes (option 1 or 2 above), the manifest files in this repo are ready to copy directly into the appropriate upstream PR.