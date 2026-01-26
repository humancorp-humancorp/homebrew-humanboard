cask "humanboard" do
  version "0.1.33"
  sha256 "6b86ac1b02fe3ea538df3721c8e7fe82f4d33c2685466ab550b2c11e3632f8b8"

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
