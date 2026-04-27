cask "handless" do
  version "0.2.9"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.9/Handless_0.2.9_apple-silicon.dmg"
    sha256 "03483d82f05c41f178438e7495de14fac93c1e125e3522f0ffbe605268df07e5"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.9/Handless_0.2.9_intel.dmg"
    sha256 "cdf26cfe18e22f1d3e7109b286bebc07b95e2054e9e588fca0a7de4e4de6d162"
  end

  name "Handless"
  desc "Cross-platform desktop speech-to-text app"
  homepage "https://github.com/ElwinLiu/handless"

  app "Handless.app"

  zap trash: [
    "~/Library/Application Support/com.handless.app",
    "~/Library/Caches/com.handless.app",
    "~/Library/Preferences/com.handless.app.plist",
    "~/Library/Saved Application State/com.handless.app.savedState",
    "~/Library/Logs/com.handless.app",
  ]
end
