cask "termx" do
  version "2.0.8"
  sha256 "2b9627e495c18004e0084080fbfb5abc961679fd7e410a8650d771b910524bf1"

  url "https://github.com/ianomad/homebrew-tap/releases/download/v#{version}/TermX-#{version}.zip"
  name "TermX"
  desc "Terminal emulator with live theming, command palette, and 50 pixel-art dock icons"
  homepage "https://termx.ilyusha.xyz"

  depends_on macos: ">= :monterey"

  app "TermX.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/TermX.app"]
  end

  zap trash: [
    "~/Library/Application Support/TermX",
    "~/Library/Preferences/com.ianomad.termx.plist",
    "~/Library/Saved Application State/com.ianomad.termx.savedState",
    "~/.config/termx",
  ]
end
