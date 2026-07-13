# Homebrew Cask manifest
# Submit to: https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md
# Path in homebrew-cask repo: Casks/m/maza.rb
#
# PR title convention: "cask maza: 0.16.3"
# Co-authorship: @owlhooter (MAZA maintainer) should ideally co-sign
#
# Note: Homebrew Cask is macOS-only. The Linux tarballs from MAZA's release
# aren't suitable for a cask — Linux users should use the Snap, AUR, or
# direct tarball install (see MAINTAINER-OUTREACH.md).

cask "maza" do
  version "0.16.3"
  sha256 "c399785cb8827e064474cee99341f9bd85e43ebe767b3e767f8942463926300f"

  url "https://github.com/MazaCoin/maza/releases/download/v#{version}/maza-#{version}-osx-unsigned.dmg"
  name "MAZA Core"
  desc "Full node wallet for the MAZA (MazaCoin) cryptocurrency — a sovereign-tribe digital currency since 2014"
  homepage "https://mazacoin.org/"

  livecheck do
    url :url
    strategy :github_latest_release
  end

  app "Maza-Qt.app"

  zap trash: [
    "~/Library/Application Support/MazaCore",
    "~/Library/Preferences/Maza-Qt.plist",
    "~/Library/Saved Application State/Maza-Qt.savedState",
  ]

  caveats <<~EOS
    MAZA Core is an unofficial community-maintained cask.
    Upstream: https://github.com/MazaCoin/maza
    Binaries are published by the upstream MAZA release (v#{version}).
    For Linux use Snap, AUR, or the official tarball.
  EOS
end