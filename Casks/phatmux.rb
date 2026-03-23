cask "phatmux" do
  version "0.63.1"
  sha256 "77115f08d301bc884942b98b5a205d60596f80dbd698c763983570a29bcbc937"

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
