cask "termx" do
  version "2.0.6"
  sha256 "9552b06e2a556d89e2f450cfda8fa8bf8fa176dbee94fca637014032f1311c3f"

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
