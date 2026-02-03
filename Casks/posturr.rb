cask "posturr" do
  version "1.5.6"
  sha256 "7088676259c97880a8b4c37f71fabd0e2956f4ac40db170b22a7e5e6b4ca9791"

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
