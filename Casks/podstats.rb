# Homebrew Cask for PodStats.
# Install:
#   brew tap aaangelmartin/podstats
#   brew install --cask podstats
#
# After tagging a new release with scripts/build-release.sh or via GitHub Actions:
#   1. Bump `version` to match the tag (without the leading "v").
#   2. Update `sha256` to the SHA-256 of the new DMG (printed by the workflow / script).
#   3. Commit + push.
#   Homebrew will pick the new version up automatically on `brew update && brew upgrade`.
cask "podstats" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/aaangelmartin/PodStats/releases/download/v#{version}/PodStats-#{version}.dmg"
  name "PodStats"
  desc "Stats, replays and playlist editor for the classic iPod"
  homepage "https://github.com/aaangelmartin/PodStats"

  app "PodStats.app"

  zap trash: [
    "~/Library/Application Support/PodStats",
    "~/Library/Preferences/com.aaangelmartin.PodStats.plist",
    "~/Library/Caches/com.aaangelmartin.PodStats",
  ]
end
