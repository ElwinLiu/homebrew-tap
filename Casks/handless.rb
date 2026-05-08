cask "handless" do
  version "0.2.10"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.10/Handless_0.2.10_apple-silicon.dmg"
    sha256 "1d0a7bd62b470dd17da6db2b606995b6808f3ba745fed3901115d175493065c7"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v0.2.10/Handless_0.2.10_intel.dmg"
    sha256 "3073334216f1251b1d11edf623acf68f182d92d7dfa173af84f27181913e98ff"
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
