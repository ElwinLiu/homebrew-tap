cask "handless" do
  version "0.2.6"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.6/Handless_0.2.6_apple-silicon.dmg"
    sha256 "7efe5db1adf9f01fba330c228f28ab0ae00e553941ef491594ed2cff74c41770"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.6/Handless_0.2.6_intel.dmg"
    sha256 "ee0252ddd75bbab255173e24a7605fd23ef4ed91834ce0b2be69497c8492e062"
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
