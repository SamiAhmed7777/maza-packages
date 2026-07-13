# MAZA / MazaCoin branding assets

This directory contains the official MAZA Medicine Wheel logo (the M monogram in
the four-color wheel — black, white, yellow, red) staged for use by packaging
manifests in this repo.

## Source

The canonical source is `mazacoin-flat-bright-saturated.64.png` published at
<https://mazacoin.org/images/mazacoin-flat-bright-saturated.64.png>. The
high-resolution 1254×1254 derivative (with background removed via
[ClippingMagic](https://clippingmagic.com)) is `maza-logo-clean.png` in this
directory and serves as the master from which all other sizes are rendered.

If you have a higher-resolution source from the upstream maintainer
(`@owlhooter` on GitHub), replace `maza-logo-clean.png` and regenerate the
sizes — the script that produced this batch lives in the skill
`third-party-package-distribution` and uses Pillow only.

## Files

| File | Size | Purpose |
| ---- | ---- | ------- |
| `maza-logo-clean.png` | 1238×1238 | Master, transparent background |
| `icon-32.png` | 32×32 | Linux desktop, favicon |
| `icon-48.png` | 48×48 | Linux desktop |
| `icon-64.png` | 64×64 | Linux desktop |
| `icon-128.png` | 128×128 | Snap store, package metadata |
| `icon-256.png` | 256×256 | Snap store, Chocolatey, WinGet |
| `icon-512.png` | 512×512 | AppImage, Linux hi-DPI |
| `icon-1024.png` | 1024×1024 | macOS App Store, source for derivatives |
| `icon.ico` | multi-res 16/24/32/48/64/128 | Windows .ico (used by Chocolatey / Scoop shortcuts) |
| `icon.icns` | 512×512 PNG-in-ICNS | macOS .icns |

## Mirror in `snap/assets/`

The same files are mirrored in `../snap/assets/` because `snapcraft` resolves
the `icon:` field relative to the `snapcraft.yaml` file (not the repo root).
Keep these in sync if you regenerate.
