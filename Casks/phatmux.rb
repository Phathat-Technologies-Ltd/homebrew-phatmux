cask "phatmux" do
  version "0.62.2"
  sha256 "1582d51df379f617d4ee2e3891906c86fad6157b6a39c70f0b02b19602ff9416"

  url "https://github.com/Phathat-Technologies-Ltd/phatmux/releases/download/v#{version}/phatmux-macos.dmg"
  name "phatmux"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://phatmux.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "phatmux.app"
  binary "#{appdir}/phatmux.app/Contents/Resources/bin/phatmux"

  zap trash: [
    "~/Library/Application Support/phatmux",
    "~/Library/Caches/phatmux",
    "~/Library/Preferences/com.phatmux.app.plist",
  ]
end
