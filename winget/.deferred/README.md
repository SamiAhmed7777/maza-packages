# WinGet manifest — DEFERRED

The WinGet manifest at `manifests/g/GitHub.SamiAhmed7777/MAZA/0.16.3/` is
drafted but **not being submitted** at this time.

## Why it's deferred

WinGet's package identifier scheme requires a registered publisher
(`Publisher.Package`). Because:

- `MazaCoin` is not a registered Microsoft Partner Center publisher, and
- This packaging work is community-driven (not authored by `@owlhooter`, the
  upstream MAZA maintainer),

submitting under any non-Microsoft-registered publisher name would either:

1. Force a `GitHub.<our-handle>.MAZA` style identifier that credits the
   community packager (against project values), or
2. Risk being squatted on by a third party before the upstream maintainer
   registers themselves.

## When to submit

Move `manifests/` back up to the root and submit a PR to
[`microsoft/winget-pkgs`](https://github.com/microsoft/winget-pkgs) when
**either** of the following is true:

- `@owlhooter` (the MAZA maintainer) registers as a Microsoft Partner Center
  publisher and either submits from their own account, or transfers ownership
  to us, or
- `MazaCoin` registers itself as a publisher.

In either case, the recommended identifier is `MazaCoin.MAZA`. The draft
manifests in `manifests/g/GitHub.SamiAhmed7777/MAZA/0.16.3/` will need to
be renamed and the `Publisher` field updated to match.

## What users get in the meantime

Windows users can install MAZA via:

- `scoop install maza` (Scoop — going out today)
- `choco install maza` (Chocolatey — going out today)

Both of those channels don't require any publisher registration.
