cask "termx" do
  version "2.0.7"
  sha256 "b8746b0cbccb06e1df386d262aac1422ecf083e1d5ff8ec340038104a72d4684"

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
