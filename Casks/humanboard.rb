cask "humanboard" do
  version "0.1.34"
  sha256 "3ee4e8826112f46f97bcc14f36abd55c23809fdf051c7c8ab02fd8cbd96ec71f"

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
