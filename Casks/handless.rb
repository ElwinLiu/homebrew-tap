cask "handless" do
  version "0.2.5"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.5/Handless_0.2.5_apple-silicon.dmg"
    sha256 "8546a93bc20fe72fc6ab613418845a86cb5c6d327dc6ffba7c1cced972d0db01"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.5/Handless_0.2.5_intel.dmg"
    sha256 "31def646af4899d5293760e1c4b7d37856ca4574f377ab2e8e47225e76c314ad"
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
