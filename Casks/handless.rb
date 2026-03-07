cask "handless" do
  version "0.1.2"

  on_arm do
    url "https://github.com/ElwinLiu/handless/releases/download/v#{version}/Handless_#{version}_aarch64.dmg"
    sha256 "12af813b179314cc0e0e905e671a835353a070bd539ec06c08fe01f10a875d6f"
  end

  on_intel do
    url "https://github.com/ElwinLiu/handless/releases/download/v#{version}/Handless_#{version}_x64.dmg"
    sha256 "ccafdcd2e82ab429d8acc1f498000ca863d50c1b42337e770c7e42666095e9f4"
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
