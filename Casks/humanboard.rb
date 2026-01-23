cask "humanboard" do
  version "0.1.3"
  sha256 "6dde329d9975cff75b30341831915f8af3e0bb25a0e024d1d2bd4302b5b4a6bb"

  url "https://github.com/humancorp-humancorp/humanboard/releases/download/v#{version}/Humanboard.dmg"
  name "Humanboard"
  desc "Desktop productivity app"
  homepage "https://github.com/humancorp-humancorp/humanboard"

  depends_on macos: ">= :big_sur"

  app "Humanboard.app"

  zap trash: [
    "~/Library/Application Support/Humanboard",
    "~/Library/Caches/Humanboard",
    "~/Library/Preferences/com.humancorp.humanboard.plist",
  ]
end
