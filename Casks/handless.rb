cask "handless" do
  version "0.2.3"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.3/Handless_0.2.3_apple-silicon.dmg"
    sha256 "3e53a68dbafaa38029cbeeeb9fd11ffff16681c31c7b4b88fbb7b9ff52e07fd5"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.3/Handless_0.2.3_intel.dmg"
    sha256 "f8bf803a7d228990a6f7fde76225961e7e95176898f0038f55b67064cd569eb0"
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
