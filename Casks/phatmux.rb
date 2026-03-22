cask "phatmux" do
  version "0.62.1"
  sha256 "3be67bc3600fdde1c2b62c02c448235bd81ad0bf0772ff33353a6d91cc4b19fe"

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
