cask "phatmux" do
  version "0.63.0"
  sha256 "19a8e1d92e3e3c3d054db4f46dcabbb02aada471d61d46634caf417d09438c9e"

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
