cask "termx" do
  version "1.1.0"
  sha256 "db570538261c2fb21f5f3adece06163389e38dc82ccd212887cc180646b969a2"

  url "https://releases.termx.ilyusha.xyz/v#{version}/TermX-#{version}.zip"
  name "TermX"
  desc "Terminal emulator based on iTerm2 with command palette and pixel-art dock icons"
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
