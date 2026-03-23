cask "termx" do
  version "1.0.0"
  sha256 "641601a541ced3f9f4f4eae2dd4b21fd1a2fdfcfc5eb36af8f06f26bd89229da"

  url "https://github.com/ianomad/termx/releases/download/v#{version}/TermX-#{version}.zip"
  name "TermX"
  desc "Terminal emulator based on iTerm2 with command palette and pixel-art dock icons"
  homepage "https://github.com/ianomad/termx"

  depends_on macos: ">= :monterey"

  app "iTerm2.app", target: "TermX.app"

  zap trash: [
    "~/Library/Application Support/iTerm2",
    "~/Library/Preferences/com.ianomad.termx.plist",
    "~/Library/Saved Application State/com.ianomad.termx.savedState",
  ]
end
