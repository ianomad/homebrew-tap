cask "termx" do
  version "2.1.6"
  sha256 "676ce9d99fb00f130c3dbb11d873e269db4054fe8f9a80fcb6f61f4c9c59c353"

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
