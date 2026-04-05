cask "termx" do
  version "2.1.5"
  sha256 "3d06e7cb47f35f386d73b82e90d1577565582fad0d8468eddbf39c47716eff0d"

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
