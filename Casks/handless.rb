cask "handless" do
  version "0.2.8"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.8/Handless_0.2.8_apple-silicon.dmg"
    sha256 "4885ce1099f9f558f95d5df169c6c104e7911fe18b458c517fbe0929364c301e"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.8/Handless_0.2.8_intel.dmg"
    sha256 "0cface65e60314d35559c4f6f649c71e5cd83b86f141b011403ef4be3c52316d"
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
