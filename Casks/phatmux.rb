cask "phatmux" do
  version "0.63.0"
  sha256 "020dbc8c77612d9ee5cfbf1ca0dda79d0faf1215d9a960e54d32e6343657a121"

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
