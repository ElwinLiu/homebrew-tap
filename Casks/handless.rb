cask "handless" do
  version "0.2.4"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.4/Handless_0.2.4_apple-silicon.dmg"
    sha256 "a44fee4651d969ccbbf0a3aa9830851cc1a36da374d2ee67bd399e8d343c2983"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.4/Handless_0.2.4_intel.dmg"
    sha256 "3e576f025dad17cff460fb885ceff65fd16e6dabbbef5ef9546b3ca3b1e26fe5"
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
