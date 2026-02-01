cask "posturr" do
  version "1.5.2"
  sha256 "f471463e20fd3b18189a6f33edfd5c1a2e916e4bbad5c0a8de5da10cac4942e9"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.zip"
  name "Posturr"
  desc "Posture monitoring app that blurs your screen when you slouch"
  homepage "https://github.com/tldev/posturr"

  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: [
    "~/Library/Preferences/com.thelazydeveloper.posturr.plist",
  ]
end
