# MAZA Core (maza) — Unofficial

Unofficial community-maintained packaging for **MAZA (MazaCoin)** v0.16.3.

This repo contains ready-to-submit manifests for:

| Channel       | File                                       | Target repo                          |
| ------------- | ------------------------------------------ | ------------------------------------ |
| Homebrew Cask | `homebrew/Casks/maza.rb`                   | `Homebrew/homebrew-cask`             |
| Scoop         | `scoop/maza.json`                          | `ScoopInstaller/Main`                |
| WinGet        | `winget/manifests/m/Mazacoin.MAZA/0.16.3/` | `microsoft/winget-pkgs`              |
| Chocolatey    | `chocolatey/{maza.nuspec,tools/*.ps1}`     | `chocolatey-community/chocolatey-packages` |
| Snap          | `snap/snapcraft.yaml`                      | `snapcraft.io` (brand store)         |
| AUR           | `aur/PKGBUILD`, `aur/maza.install`         | `aur.archlinux.org` (maza)           |

Every manifest points at the **official binaries** already published at
<https://github.com/MazaCoin/maza/releases/tag/v0.16.3>. No source code
modifications, no fork of MAZA itself.

## Asset SHA256 (verified against the v0.16.3 release at publish time)

| Asset                                       | SHA256                                                              |
| ------------------------------------------- | ------------------------------------------------------------------- |
| `maza-0.16.3-x86_64-linux-gnu.tar.gz`       | `57ef923ecc518119bf74681a932e250fd87035e8c717f95781df1d0d303ddf48`   |
| `maza-0.16.3-aarch64-linux-gnu.tar.gz`      | `5889f8cd9e173bb8c5f6ef80b08d71cbb4247ec1ed81d16d9394b78adc5929d8`   |
| `maza-0.16.3-osx-unsigned.dmg`              | `c399785cb8827e064474cee99341f9bd85e43ebe767b3e767f8942463926300f`   |
| `maza-0.16.3-osx64.tar.gz`                  | `e5d283de0cd029b2c54a8075737573d2dae58284ac9d5a1a4252ff4e18ba9ca4`   |
| `maza-0.16.3-win64-setup-unsigned.exe`      | `563f37e8208427a38cde013f785d2a4cbb9aac29e93dc1233d28b9762d3eddec`   |
| `maza-0.16.3-win32-setup-unsigned.exe`      | `d3f1d2bd4247ffbf3bf002a2e67f4445ed9d37f9c4afd88de6c45ff2c71f69d0`   |
| `maza-0.16.3-win64.zip`                     | `1f09dcb410a9c97f5f3d2714c5fdab8319009c0d82b536c72b10279e974b31c3`   |
| `maza-0.16.3-win32.zip`                     | `b67bb2d4ea221bbbfec33eac7f9a3fdbb96f992b66dc8ae04d85623d3f8c38dc`   |

## Submission order (recommended)

1. **AUR** — no permission gate. Submit immediately.
2. **Scoop** — open community, low bar.
3. **WinGet** — Microsoft bot auto-validates in seconds; review by humans within days.
4. **Chocolatey** — needs API key + 1-3 day mod queue.
5. **Snap** — needs brand-registered snap name; multi-day review.
6. **Homebrew Cask** — strictest about upstream acknowledgment; do this last, after the maintainer has been told.

See [`../MAINTAINER-OUTREACH.md`](../MAINTAINER-OUTREACH.md) for the message to send to @owlhooter.

## Re-running this for a new MAZA release

When MAZA releases v0.16.4 (or anything newer), run the verification script
and re-hash:

```bash
gh release view vX.Y.Z --repo MazaCoin/maza --json assets --jq '.assets[] | "\(.name) \(.size)"'
# Then update the SHA256s in each manifest using the new asset URLs.
```