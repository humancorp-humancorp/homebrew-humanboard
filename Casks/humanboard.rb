cask "humanboard" do
  version "0.1.32"
  sha256 "f252e2a1d1c9070a85e8ecc84e66b2d3bc6edd84e76394659b3449b8800a825f"

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
