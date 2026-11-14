# Homebrew Cask for Claude Launcher.
# Install:
#   brew install --cask aaangelmartin/tap/claude-launcher
#
# For a new release (scripts/release.sh prints the sha256 of dist/claude-launcher.zip):
#   1. Bump `version` to the tag, without the leading "v".
#   2. Update `sha256`.
cask "claude-launcher" do
  version "1.0.0"
  sha256 "32b92ed08d631edeca3c1381b3d3e5d2a40099032cbd08558b4125116b24004f"

  url "https://github.com/aaangelmartin/claude-launcher/releases/download/v#{version}/claude-launcher.zip"
  name "Claude Launcher"
  desc "Unofficial launcher to start, resume and switch Claude Code sessions"
  homepage "https://github.com/aaangelmartin/claude-launcher"

  depends_on macos: :sonoma

  app "Claude Launcher.app"

  uninstall quit:       "com.aaangelmartin.claude-launcher",
            login_item: "Claude Launcher"

  zap trash: "~/Library/Preferences/com.aaangelmartin.claude-launcher.plist"
end
