cask "handless" do
  version "0.2.7"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.7/Handless_0.2.7_apple-silicon.dmg"
    sha256 "53b863bfb6b7be1372d7bcbc5feb3de6f7b370eeb9146758fb7982544ee350f0"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.7/Handless_0.2.7_intel.dmg"
    sha256 "5b23b00a7b2692f7ffb6970d7a8ec7f280e472574a5c6347ce60cf5348b24f14"
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
